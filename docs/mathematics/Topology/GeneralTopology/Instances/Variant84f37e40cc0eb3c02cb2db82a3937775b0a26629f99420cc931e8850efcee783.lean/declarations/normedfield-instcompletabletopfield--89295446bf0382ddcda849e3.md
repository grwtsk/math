# NormedField.instCompletableTopField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4c098c89ae90da9ccaefbeaa779a9d0956ac3ddcd8bbfd51f963c10aee0ca95",
  "kind": "instance",
  "lexical_name": "NormedField.instCompletableTopField",
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
  "slug": "normedfield-instcompletabletopfield--89295446bf0382ddcda849e3",
  "source": {
    "blob": "c21f60d220def9db034c7b170ab1428e9838b589",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 19,
    "path": "GRWTSK/Topology/GeneralTopology/Instances/Variant84f37e40cc0eb3c02cb2db82a3937775b0a26629f99420cc931e8850efcee783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89295446bf0382ddcda849e33951045646b391e44a75f1516e72068ba36d769b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Instances/Variant84f37e40cc0eb3c02cb2db82a3937775b0a26629f99420cc931e8850efcee783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4c098c89ae90da9ccaefbeaa779a9d0956ac3ddcd8bbfd51f963c10aee0ca95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NormedField.instCompletableTopField : CompletableTopField F where
  t0 := (inferInstanceAs <| T0Space _).t0
  nice f hc hn := by
    obtain ⟨δ, δ_pos, hδ⟩ := (disjoint_nhds_zero ..).mp <| disjoint_iff.mpr hn
    have f_bdd : f.IsBoundedUnder (· ≤ ·) (‖·⁻¹‖) :=
      ⟨δ⁻¹, hδ.mono fun y hy ↦ le_inv_of_le_inv₀ δ_pos (by simpa using hy)⟩
    have h₀ : ∀ᶠ y in f, y ≠ 0 := hδ.mono fun y hy ↦ by simpa using δ_pos.trans_le hy
    have : ∀ᶠ p in f ×ˢ f, p.1⁻¹ - p.2⁻¹ = p.1⁻¹ * (p.2 - p.1) * p.2⁻¹ :=
      h₀.prod_mk h₀ |>.mono fun ⟨x, y⟩ ⟨hx, hy⟩ ↦ by simp [mul_sub, sub_mul, hx, hy]
    rw [cauchy_iff_tendsto_swapped] at hc
    rw [cauchy_map_iff_tendsto, tendsto_congr' this]
    refine ⟨hc.1, .zero_mul_isBoundedUnder_le ?_ <| tendsto_snd.isBoundedUnder_comp f_bdd⟩
    exact isBoundedUnder_le_mul_tendsto_zero (tendsto_fst.isBoundedUnder_comp f_bdd) hc.2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Instances/Variant84f37e40cc0eb3c02cb2db82a3937775b0a26629f99420cc931e8850efcee783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Instances/Variant84f37e40cc0eb3c02cb2db82a3937775b0a26629f99420cc931e8850efcee783.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c21f60d220def9db034c7b170ab1428e9838b589` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
