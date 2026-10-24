# schreierGraphSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bf72c35fbb0e62fb8a83d30e4fbbbad11b281bc4daa0282c824fd34eec29445",
  "kind": "instance",
  "lexical_name": "schreierGraphSMul",
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
  "slug": "schreiergraphsmul--9617cd6a3ec187c41fa79143",
  "source": {
    "blob": "d77ec080ee4baf351e4d1b098aef3868e6903c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 97,
    "path": "GRWTSK/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9617cd6a3ec187c41fa79143ea3b7f8fbb85d887f0e1e76913528a461afee5e3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bf72c35fbb0e62fb8a83d30e4fbbbad11b281bc4daa0282c824fd34eec29445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance schreierGraphSMul : SMul M (SchreierGraph V ι) where
  smul x y := ⟨x • y.toVertex⟩

/-- The quiver structure on a Schreier graph. An arrow from `x` to `y` exists when
there is an `s : S` such that `(ι s) • x = y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d77ec080ee4baf351e4d1b098aef3868e6903c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
