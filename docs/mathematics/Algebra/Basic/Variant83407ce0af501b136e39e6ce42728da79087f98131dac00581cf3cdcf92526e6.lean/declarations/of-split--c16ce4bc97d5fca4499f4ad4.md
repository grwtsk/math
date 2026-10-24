# of_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3b15937-2f91-7451-c5ba-e7d9f259d438",
  "kind": "theorem",
  "lexical_name": "of_split",
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
  "slug": "of-split--c16ce4bc97d5fca4499f4ad4",
  "source": {
    "blob": "a9eba332399ccf5d9ec775d2cfd02b4795105945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 346,
    "path": "GRWTSK/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c16ce4bc97d5fca4499f4ad4eeaca276fee81f64ab957a635ea8695fd64f5ab1",
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

Occurrence: `result:e3b15937-2f91-7451-c5ba-e7d9f259d438`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_split (f : P →ₐ[R] A) (g : A →ₐ[R] P ⧸ RingHom.ker f.toRingHom ^ 2)
    (h : f.kerSquareLift.comp g = AlgHom.id R A) :
    FormallySmooth R A := by
  refine (iff_split_surjection f fun x ↦ ?_).mpr ⟨g, h⟩
  obtain ⟨y, hy⟩ := Ideal.Quotient.mk_surjective (g x)
  exact ⟨y, congr(f.kerSquareLift $hy).trans congr($h x)⟩

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9eba332399ccf5d9ec775d2cfd02b4795105945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
