# splitAt_right_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5028472f-c0b3-3ead-ee60-5713a6d078e0",
  "kind": "theorem",
  "lexical_name": "splitAt_right_eval",
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
  "slug": "splitat-right-eval--9c4101ce20fc053d77d38c3b",
  "source": {
    "blob": "05fa8ddf9a08b97097c007d30d78fd00fc6ca632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 557,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Varianta3c55b6cf4547f3956f658a9c51822095f1029416d3d6ef4da1381b07e2ea0e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c4101ce20fc053d77d38c3b55a681636d18fb2b4e975f307466bd4fa01e7be9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subdivision/Varianta3c55b6cf4547f3956f658a9c51822095f1029416d3d6ef4da1381b07e2ea0e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5028472f-c0b3-3ead-ee60-5713a6d078e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splitAt_right_eval
    (C : RationalSegment M degree) (tau t : UnitInterval) :
    (splitAt C tau).2.eval t = C.eval (rightParameter tau t) := by
  exact splitRightSegment_eval C tau t

end


end Surface.Core.Bezier.Subdivision

namespace Surface.Core.Bezier

namespace RationalSegment

variable {V : Type*} [AddCommGroup V] [Module ℝ V] {degree : ℕ}

/-- Reparameterize the unit interval onto the left side of a split. -/
@[surface_novel, expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Varianta3c55b6cf4547f3956f658a9c51822095f1029416d3d6ef4da1381b07e2ea0e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Varianta3c55b6cf4547f3956f658a9c51822095f1029416d3d6ef4da1381b07e2ea0e2.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05fa8ddf9a08b97097c007d30d78fd00fc6ca632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
