# orbit_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e153726c-94da-c910-4ab0-bf379a0a7c57",
  "kind": "theorem",
  "lexical_name": "orbit_succ",
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
  "slug": "orbit-succ--bd99a73969b6c479ab95001f",
  "source": {
    "blob": "357e7d9c4fb50cc877131e8a90775dc5f5fbc2ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd99a73969b6c479ab95001ff7abb85c294ded58d3af320a78131612d27fa1af",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e153726c-94da-c910-4ab0-bf379a0a7c57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orbit_succ
    (application : Application)
    (initial : Matrix)
    (step : Nat) :
    orbit application initial (Nat.succ step) =
      application (orbit application initial step) :=
  rfl

end Application
end BooleanMatrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357e7d9c4fb50cc877131e8a90775dc5f5fbc2ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
