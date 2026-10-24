# Spec.monadMap_OptionT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be39776453cdad037b6399d98f1ffc8b2582b5ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/935dd64a1b615220698ffefffa123e74c4660f2b5c2a79b40af98d606725b605.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0d599dd-2b13-4483-db8b-f5bd0520b271",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b199352-ef1e-0960-4c2b-4e067cc04225",
  "kind": "theorem",
  "lexical_name": "Spec.monadMap_OptionT",
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
  "slug": "spec-monadmap-optiont--c516afea390767e758dd5a8d",
  "source": {
    "blob": "be39776453cdad037b6399d98f1ffc8b2582b5ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 302,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant935dd64a1b615220698ffefffa123e74c4660f2b5c2a79b40af98d606725b605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c516afea390767e758dd5a8dfeb2463ac4a8bf20fd18719538636c620e6bad95",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant935dd64a1b615220698ffefffa123e74c4660f2b5c2a79b40af98d606725b605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b199352-ef1e-0960-4c2b-4e067cc04225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spec.monadMap_OptionT [Monad m] [WP m ps]
    (f : ∀{β}, m β → m β) {α} (x : OptionT m α) (Q : PostCond α (.except PUnit ps)) :
  Triple (ps:=.except PUnit ps)
    (MonadFunctor.monadMap (m:=m) f x)
    (wp⟦f x.run⟧ (fun o => o.casesOn (Q.2.1 ⟨⟩) Q.1, Q.2.2))
    Q := by simp [Triple.iff]

/-! # `MonadFunctorT` -/

@[spec]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant935dd64a1b615220698ffefffa123e74c4660f2b5c2a79b40af98d606725b605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant935dd64a1b615220698ffefffa123e74c4660f2b5c2a79b40af98d606725b605.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be39776453cdad037b6399d98f1ffc8b2582b5ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
