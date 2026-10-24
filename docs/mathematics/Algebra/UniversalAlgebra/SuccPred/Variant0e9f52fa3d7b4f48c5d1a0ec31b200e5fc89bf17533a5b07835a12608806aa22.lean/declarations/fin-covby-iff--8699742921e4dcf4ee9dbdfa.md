# Fin.covBy_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a57ff89-118b-e0dc-b8d0-3843d9a7e6bb",
  "kind": "theorem",
  "lexical_name": "Fin.covBy_iff",
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
  "slug": "fin-covby-iff--8699742921e4dcf4ee9dbdfa",
  "source": {
    "blob": "b8b916e14d71fc1902789130aaea54cb23db8796",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 85,
    "path": "GRWTSK/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8699742921e4dcf4ee9dbdfa242df3420698689c6ee4774e0ba4a239b17ce0f5",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a57ff89-118b-e0dc-b8d0-3843d9a7e6bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem Fin.covBy_iff {n : ℕ} {a b : Fin n} : a ⋖ b ↔ (a : ℕ) ⋖ b :=
  and_congr_right' ⟨fun h c ha hb ↦ @h ⟨c, hb.trans b.prop⟩ ha hb, fun h _c hc ↦ h hc⟩

alias ⟨CovBy.coe_fin, _⟩ := Fin.covBy_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8b916e14d71fc1902789130aaea54cb23db8796` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
