# ACF_models_genericPolyMapSurjOnOfInjOn_of_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64c6c5d44b25cffcb3e070cf00fca0267085d050",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b037464e-e231-1dfe-b3a5-d002495d18ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc4bcdcd-f931-acbf-c596-bc2c8e137f74",
  "kind": "theorem",
  "lexical_name": "ACF_models_genericPolyMapSurjOnOfInjOn_of_prime",
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
  "slug": "acf-models-genericpolymapsurjonofinjon-of-prime--dbf5ff3af82bef43316ad081",
  "source": {
    "blob": "64c6c5d44b25cffcb3e070cf00fca0267085d050",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbf5ff3af82bef43316ad08131e2744c93bfad8e62fcaec870f179905dc05527",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc4bcdcd-f931-acbf-c596-bc2c8e137f74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ACF_models_genericPolyMapSurjOnOfInjOn_of_prime [Finite ι]
    {p : ℕ} (hp : p.Prime) (φ : ring.Formula (α ⊕ ι)) (mons : ι → Finset (ι →₀ ℕ)) :
    Theory.ACF p ⊨ᵇ genericPolyMapSurjOnOfInjOn φ mons := by
  classical
  have : Fact p.Prime := ⟨hp⟩
  letI := compatibleRingOfRing (AlgebraicClosure (ZMod p))
  have : CharP (AlgebraicClosure (ZMod p)) p :=
    charP_of_injective_algebraMap
      (RingHom.injective (algebraMap (ZMod p) (AlgebraicClosure (ZMod p)))) p
  rw [← (ACF_isComplete (Or.inl hp)).realize_sentence_iff _
    (AlgebraicClosure (ZMod p)), realize_genericPolyMapSurjOnOfInjOn]
  rintro v ⟨f, _⟩
  exact ax_grothendieck_of_locally_finite (K := ZMod p) (ι := ι) f _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/AxGrothendieck/Variantd8e6c92e69c758b4aa6022e1caeab9bee591227c1fa39c4f22846e70022a301f.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64c6c5d44b25cffcb3e070cf00fca0267085d050` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
