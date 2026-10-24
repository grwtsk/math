# Rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1458108fb88e9afc7d1eebf9fbb9dd18d88dd51aa1cd8b23b41dd7fd6544c09c",
  "kind": "inductive",
  "lexical_name": "Rel",
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
  "slug": "rel--8400eded11cfc0cacfa4ceb4",
  "source": {
    "blob": "a14498d7771283064e142cacd03495b38ed96449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8400eded11cfc0cacfa4ceb49b331316b1fd320623d62d1eec09efd4c35035e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1458108fb88e9afc7d1eebf9fbb9dd18d88dd51aa1cd8b23b41dd7fd6544c09c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Rel : FreeAlgebra R M → FreeAlgebra R M → Prop
  -- force `ι` to be linear
  | add {a b : M} : Rel (FreeAlgebra.ι R (a + b)) (FreeAlgebra.ι R a + FreeAlgebra.ι R b)
  | smul {r : R} {a : M} :
    Rel (FreeAlgebra.ι R (r • a)) (algebraMap R (FreeAlgebra R M) r * FreeAlgebra.ι R a)
#align tensor_algebra.rel TensorAlgebra.Rel

end TensorAlgebra

/-- The tensor algebra of the module `M` over the commutative semiring `R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant7cfbd316c8137d5555a0d47d3fde19da8dd481454ee382137231810ac4f02658.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a14498d7771283064e142cacd03495b38ed96449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
