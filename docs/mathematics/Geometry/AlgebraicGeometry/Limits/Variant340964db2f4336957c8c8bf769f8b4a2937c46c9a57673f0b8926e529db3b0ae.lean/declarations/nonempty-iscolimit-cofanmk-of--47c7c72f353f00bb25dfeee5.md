# nonempty_isColimit_cofanMk_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc2def35-f6a1-f78f-2ff3-4e854394a41c",
  "kind": "lemma",
  "lexical_name": "nonempty_isColimit_cofanMk_of",
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
  "slug": "nonempty-iscolimit-cofanmk-of--47c7c72f353f00bb25dfeee5",
  "source": {
    "blob": "0dacb8a8190e7d397c53f5d9348910f99d156968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 395,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47c7c72f353f00bb25dfeee54f1ec4fcb6f699a359f160eb26db848b2dbde8bb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc2def35-f6a1-f78f-2ff3-4e854394a41c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonempty_isColimit_cofanMk_of [Small.{u} σ]
    {X : σ → Scheme.{u}} {S : Scheme.{u}} (f : ∀ i, X i ⟶ S) [∀ i, IsOpenImmersion (f i)]
    (hcov : ⨆ i, (f i).opensRange = ⊤) (hdisj : Pairwise (Disjoint on (f · |>.opensRange))) :
    Nonempty (IsColimit <| Cofan.mk S f) := by
  have : IsOpenImmersion (Sigma.desc f) := by
    refine isOpenImmersion_sigmaDesc _ _ (fun i j hij ↦ ?_)
    simpa [Function.onFun_apply, disjoint_iff, Opens.ext_iff] using hdisj hij
  simp only [← Cofan.isColimit_iff_isIso_sigmaDesc (Cofan.mk S f), cofan_mk_inj, Cofan.mk_pt]
  apply isIso_of_isOpenImmersion_of_opensRange_eq_top
  rw [eq_top_iff]
  intro x hx
  have : x ∈ ⨆ i, (f i).opensRange := by rwa [hcov]
  obtain ⟨i, y, rfl⟩ := by simpa only [Opens.iSup_mk, Opens.mem_mk, Set.mem_iUnion] using this
  use Sigma.ι X i |>.base y
  simp [← Scheme.comp_base_apply]

variable (X Y : Scheme.{u})

/-- (Implementation Detail)
The coproduct of the two schemes is given by indexed coproducts over `WalkingPair`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant340964db2f4336957c8c8bf769f8b4a2937c46c9a57673f0b8926e529db3b0ae.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dacb8a8190e7d397c53f5d9348910f99d156968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
