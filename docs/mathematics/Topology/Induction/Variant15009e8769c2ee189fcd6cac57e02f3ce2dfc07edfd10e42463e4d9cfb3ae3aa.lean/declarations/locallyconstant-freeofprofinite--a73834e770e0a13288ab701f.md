# LocallyConstant.freeOfProfinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af66653118eb2e33e1bfbaeb447f1ed4b8712eb05916b58e2fdf39b2fa496923",
  "kind": "instance",
  "lexical_name": "LocallyConstant.freeOfProfinite",
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
  "slug": "locallyconstant-freeofprofinite--a73834e770e0a13288ab701f",
  "source": {
    "blob": "fd7d373be90bdf0c079f7b05790fade4feb266b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 154,
    "path": "GRWTSK/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a73834e770e0a13288ab701fbe8ad0cd6d97d61e160ad601a96e074b6e34fdb5",
  "verification": {
    "reference": "docs/verification/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af66653118eb2e33e1bfbaeb447f1ed4b8712eb05916b58e2fdf39b2fa496923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance LocallyConstant.freeOfProfinite (S : Profinite.{u}) :
    Module.Free ℤ (LocallyConstant S ℤ) := by
  obtain ⟨_, _⟩ := exists_wellFoundedLT {C : Set S // IsClopen C}
  exact @Nobeling_aux {C : Set S // IsClopen C} _ _ S (Nobeling.ι S) (Nobeling.isClosedEmbedding S)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Induction/Variant15009e8769c2ee189fcd6cac57e02f3ce2dfc07edfd10e42463e4d9cfb3ae3aa.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd7d373be90bdf0c079f7b05790fade4feb266b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
