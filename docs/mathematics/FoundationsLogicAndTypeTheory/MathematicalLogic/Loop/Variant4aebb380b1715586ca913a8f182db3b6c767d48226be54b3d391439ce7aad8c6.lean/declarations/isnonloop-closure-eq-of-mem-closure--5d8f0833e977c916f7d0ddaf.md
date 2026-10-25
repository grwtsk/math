# IsNonloop.closure_eq_of_mem_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:877d3cf8-d388-8f5e-b6cf-af36153036c5",
  "kind": "lemma",
  "lexical_name": "IsNonloop.closure_eq_of_mem_closure",
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
  "slug": "isnonloop-closure-eq-of-mem-closure--5d8f0833e977c916f7d0ddaf",
  "source": {
    "blob": "31cc20cb2ac6097234a1b00137bc6cc128d9fdf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 388,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant4aebb380b1715586ca913a8f182db3b6c767d48226be54b3d391439ce7aad8c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d8f0833e977c916f7d0ddaf3928e90ede67c6e5230a9b0b9623a33616314f30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant4aebb380b1715586ca913a8f182db3b6c767d48226be54b3d391439ce7aad8c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:877d3cf8-d388-8f5e-b6cf-af36153036c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsNonloop.closure_eq_of_mem_closure (he : M.IsNonloop e) (hef : e ∈ M.closure {f}) :
    M.closure {e} = M.closure {f} := by
  rw [← closure_closure _ {f}, ← insert_eq_of_mem hef, closure_insert_closure_eq_closure_insert,
    ← closure_closure _ {e}, ← insert_eq_of_mem (he.mem_closure_singleton hef),
    closure_insert_closure_eq_closure_insert, pair_comm]

/-- Two distinct nonloops with the same closure form a circuit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant4aebb380b1715586ca913a8f182db3b6c767d48226be54b3d391439ce7aad8c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant4aebb380b1715586ca913a8f182db3b6c767d48226be54b3d391439ce7aad8c6.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31cc20cb2ac6097234a1b00137bc6cc128d9fdf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
