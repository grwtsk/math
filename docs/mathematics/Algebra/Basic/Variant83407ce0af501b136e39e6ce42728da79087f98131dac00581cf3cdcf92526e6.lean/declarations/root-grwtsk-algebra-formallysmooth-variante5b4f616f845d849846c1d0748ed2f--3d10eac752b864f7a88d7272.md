# _root_.GRWTSK.Algebra.FormallySmooth.Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.Algebra.Extension.formallySmooth_iff_split_injection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9832e556-b2f0-5428-96fd-5c50ba020bfd",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.FormallySmooth.Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.Algebra.Extension.formallySmooth_iff_split_injection",
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
  "slug": "root-grwtsk-algebra-formallysmooth-variante5b4f616f845d849846c1d0748ed2f--3d10eac752b864f7a88d7272",
  "source": {
    "blob": "a9eba332399ccf5d9ec775d2cfd02b4795105945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 320,
    "path": "GRWTSK/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d10eac752b864f7a88d7272e95582951b8540e2bd83f7f109cdba5c5e2c611e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9832e556-b2f0-5428-96fd-5c50ba020bfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.FormallySmooth.Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.Algebra.Extension.formallySmooth_iff_split_injection
    (P : Algebra.Extension.{w} R A) [FormallySmooth R P.Ring] :
    Algebra.FormallySmooth R A ↔ ∃ l, l ∘ₗ P.cotangentComplex = LinearMap.id := by
  refine (Algebra.FormallySmooth.iff_split_injection P.algebraMap_surjective).trans ?_
  let e : P.ker.Cotangent ≃ₗ[P.Ring] P.Cotangent :=
    { __ := AddEquiv.refl _, map_smul' r m := by ext1; simp; rfl }
  constructor
  · intro ⟨l, hl⟩
    exact ⟨(e.comp l).extendScalarsOfSurjective P.algebraMap_surjective,
      LinearMap.ext (DFunLike.congr_fun hl : _)⟩
  · intro ⟨l, hl⟩
    exact ⟨e.symm.toLinearMap ∘ₗ l.restrictScalars P.Ring,
      LinearMap.ext (DFunLike.congr_fun hl : _)⟩

/-- Let `P →ₐ[R] A` be a surjection with kernel `J`, and `P` a formally smooth `R`-algebra,
then `A` is formally smooth over `R` iff the surjection `P ⧸ J ^ 2 →ₐ[R] A` has a section.

Geometric intuition: we require that a first-order thickening of `Spec A` inside `Spec P` admits
a retraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9eba332399ccf5d9ec775d2cfd02b4795105945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
