# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cee3d3459e9ea508da5923035729b5c58424ae2f6b8899ade29af5ffd8508ea6",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--2fd3f134a7f3f63eb3cf5123",
  "source": {
    "blob": "a08e76759f66af50c4465ca60691b14335aca33f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 995,
    "line": 984,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant48981f75fb4b51d4c07109bc62ab94feb8852740c94444a79f3db7ad42210744.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fd3f134a7f3f63eb3cf512389da3d1013ba69daf0672b535099066c97e10f21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant48981f75fb4b51d4c07109bc62ab94feb8852740c94444a79f3db7ad42210744.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cee3d3459e9ea508da5923035729b5c58424ae2f6b8899ade29af5ffd8508ea6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 984–995.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : eraseArtifactVersion sameProofRef ≠ eraseArtifactVersion sameGraphRef :=
  proof_graph_projection_distinct sameProofRef sameGraphRef

end Cycle2Regression

end FCRS.TheoremTransfer.NegativeChecks

/-!
This deliberately root-qualified, non-`FCRS` declaration is a positive lock
for the complete project-environment scan.  It is proof-producing and
axiom-free; the static checker requires it to appear in the scanned difference.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant48981f75fb4b51d4c07109bc62ab94feb8852740c94444a79f3db7ad42210744.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant48981f75fb4b51d4c07109bc62ab94feb8852740c94444a79f3db7ad42210744.lean#L984).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a08e76759f66af50c4465ca60691b14335aca33f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
