# linearIndependent_algebraMap_comp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce334623-160c-800f-7047-c39332879d7a",
  "kind": "lemma",
  "lexical_name": "linearIndependent_algebraMap_comp_iff",
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
  "slug": "linearindependent-algebramap-comp-iff--e83d1c2d6290e200d7a28c12",
  "source": {
    "blob": "878318407122971a58353da5b30a2ce09f71d936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 46,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant511655bbeb14b601cc52f94d93442c65807cbf5402cc6fb2e52b2f31d754d40f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e83d1c2d6290e200d7a28c1238aa4c299e2c1d8ae6379b01c88576fb8ef0a6cf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variant511655bbeb14b601cc52f94d93442c65807cbf5402cc6fb2e52b2f31d754d40f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce334623-160c-800f-7047-c39332879d7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma linearIndependent_algebraMap_comp_iff {R S : Type*}
    [CommRing R] [CommRing S] [Algebra R S] [FaithfulSMul R S] [IsDomain S]
    {v : ι → ι' → R} :
    LinearIndependent S (fun i ↦ algebraMap R S ∘ v i) ↔ LinearIndependent R v := by
  change LinearIndependent S (Pi.algebraMap ι' R S ∘ v) ↔ LinearIndependent R v
  refine ⟨fun h ↦ (h.restrict_scalars' R).of_comp, fun h ↦ ?_⟩
  have : IsDomain R := .of_faithfulSMul R S
  set K := FractionRing R
  set L := FractionRing S
  replace h : LinearIndependent K (Pi.algebraMap ι' R K ∘ v) := by
    rw [← LinearIndependent.iff_fractionRing (R := R)]
    have : Function.Injective (Pi.algebraMap ι' R K) := by
      rw [← LinearMap.ker_eq_bot, Submodule.eq_bot_iff]
      intro v hv; ext i; simpa [Pi.algebraMap] using congr($hv i)
    rwa [LinearMap.linearIndependent_iff_of_injOn _ this.injOn]
  let : Algebra K L := FractionRing.liftAlgebra R L
  suffices LinearIndependent L (Pi.algebraMap ι' R L ∘ v) by
    rw [← LinearIndependent.iff_fractionRing (R := S)] at this
    have aux : Pi.algebraMap ι' R L ∘ v = Pi.algebraMap ι' S L ∘ Pi.algebraMap ι' R S ∘ v := by
      ext; simp [Pi.algebraMap, ← IsScalarTower.algebraMap_apply]
    rw [aux] at this
    exact this.of_comp
  have aux : Pi.algebraMap ι' R L ∘ v = Pi.algebraMap ι' K L ∘ Pi.algebraMap ι' R K ∘ v := by
    ext; simp [Pi.algebraMap, ← IsScalarTower.algebraMap_apply]
  rw [aux]
  replace h := h.linearIndependent_algebraMap_comp_aux L
  exact h
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variant511655bbeb14b601cc52f94d93442c65807cbf5402cc6fb2e52b2f31d754d40f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant511655bbeb14b601cc52f94d93442c65807cbf5402cc6fb2e52b2f31d754d40f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `878318407122971a58353da5b30a2ce09f71d936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
