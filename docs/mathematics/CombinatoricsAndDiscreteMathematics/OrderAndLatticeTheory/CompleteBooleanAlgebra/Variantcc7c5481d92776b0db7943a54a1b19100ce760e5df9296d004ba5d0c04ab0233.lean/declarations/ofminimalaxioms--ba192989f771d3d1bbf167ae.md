# ofMinimalAxioms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e64d0a3050397bf8d88c8287f2a7a9ef3e67a371e1cf3fe171b5a79bf02e5f1",
  "kind": "abbrev",
  "lexical_name": "ofMinimalAxioms",
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
  "slug": "ofminimalaxioms--ba192989f771d3d1bbf167ae",
  "source": {
    "blob": "91b16c0735504aa496daac8555a213130a3c250a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 178,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variantcc7c5481d92776b0db7943a54a1b19100ce760e5df9296d004ba5d0c04ab0233.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba192989f771d3d1bbf167ae151cf5873810aeb02676f62d15c5fdb358cb7dfe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variantcc7c5481d92776b0db7943a54a1b19100ce760e5df9296d004ba5d0c04ab0233.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e64d0a3050397bf8d88c8287f2a7a9ef3e67a371e1cf3fe171b5a79bf02e5f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ofMinimalAxioms [CompleteLattice α] (minAx : MinimalAxioms α) : Frame α where
  compl a := sSup {c | c ⊓ a ≤ ⊥}
  himp a b := sSup {c | c ⊓ a ≤ b}
  le_himp_iff _ b c :=
    ⟨fun h ↦ (inf_le_inf_right _ h).trans (by simp [minAx.sSup_inf_eq]), fun h ↦ le_sSup h⟩
  himp_bot _ := rfl

end Order.Frame

namespace Order.Coframe

/-- Construct a coframe instance using the minimal amount of work needed.

This sets `a \ b := sInf {c | a ≤ b ⊔ c}` and `￢a := ⊤ \ a`. -/
-- See note [reducible non-instances]
@[to_dual existing]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variantcc7c5481d92776b0db7943a54a1b19100ce760e5df9296d004ba5d0c04ab0233.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variantcc7c5481d92776b0db7943a54a1b19100ce760e5df9296d004ba5d0c04ab0233.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91b16c0735504aa496daac8555a213130a3c250a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
