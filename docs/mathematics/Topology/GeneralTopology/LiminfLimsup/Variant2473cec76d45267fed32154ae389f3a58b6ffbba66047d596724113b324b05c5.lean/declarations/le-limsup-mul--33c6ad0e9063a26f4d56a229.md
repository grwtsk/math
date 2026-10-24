# le_limsup_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4dc69167b8b51091fd109d35c49d559c2852b729",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af06dea0-169e-35e4-660e-7e42492c258e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d4db39a-3a71-00c2-9848-44a553a81d76",
  "kind": "lemma",
  "lexical_name": "le_limsup_mul",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "le-limsup-mul--33c6ad0e9063a26f4d56a229",
  "source": {
    "blob": "4dc69167b8b51091fd109d35c49d559c2852b729",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33c6ad0e9063a26f4d56a2290aae7bc70aff12b4636624507fe0df1a1ff070af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d4db39a-3a71-00c2-9848-44a553a81d76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_limsup_mul (h₁ : ∃ᶠ x in f, 0 ≤ u x) (h₂ : IsBoundedUnder (fun x1 x2 ↦ x1 ≤ x2) f u)
    (h₃ : 0 ≤ᶠ[f] v) (h₄ : IsBoundedUnder (fun x1 x2 ↦ x1 ≤ x2) f v) :
    (limsup u f) * liminf v f ≤ limsup (u * v) f := by
  have h := IsCoboundedUnder.of_frequently_ge (a := 0)
    <| (h₁.and_eventually h₃).mono fun x ⟨ux_0, vx_0⟩ ↦ mul_nonneg ux_0 vx_0
  have h' := isBoundedUnder_le_mul_of_nonneg h₁ h₂ h₃ h₄
  have u0 : 0 ≤ limsup u f := le_limsup_of_frequently_le h₁ h₂
  have uv : 0 ≤ limsup (u * v) f :=
    le_limsup_of_frequently_le ((h₁.and_eventually h₃).mono fun _ ⟨hu, hv⟩ ↦ mul_nonneg hu hv) h'
  refine mul_le_of_forall_lt_of_nonneg u0 uv fun a a0 au b b0 bv ↦ ?_
  refine (le_limsup_iff h h').2 fun c c_ab ↦ ?_
  replace h₁ := IsCoboundedUnder.of_frequently_ge h₁ -- Pre-compute it to gain 4 s.
  have h₅ := frequently_lt_of_lt_limsup h₁ au
  have h₆ := eventually_lt_of_lt_liminf bv (isBoundedUnder_of_eventually_ge h₃)
  apply (h₅.and_eventually (h₆.and h₃)).mono
  exact fun x ⟨xa, ⟨xb, _⟩⟩ ↦ c_ab.trans_le <| mul_le_mul xa.le xb.le b0 (a0.trans xa.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant2473cec76d45267fed32154ae389f3a58b6ffbba66047d596724113b324b05c5.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dc69167b8b51091fd109d35c49d559c2852b729` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
