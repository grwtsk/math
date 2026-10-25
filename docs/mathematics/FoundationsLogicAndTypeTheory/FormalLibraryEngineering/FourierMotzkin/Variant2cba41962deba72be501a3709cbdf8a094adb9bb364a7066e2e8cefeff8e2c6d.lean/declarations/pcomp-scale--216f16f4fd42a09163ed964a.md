# PComp.scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a9a4adffb0cb64c84927b9c9e698b04032189c0c7bd1ddef887e51539bc8179",
  "kind": "def",
  "lexical_name": "PComp.scale",
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
  "slug": "pcomp-scale--216f16f4fd42a09163ed964a",
  "source": {
    "blob": "5a5dbce939fea364900c3d3fe5f8bf23fe88d591",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:216f16f4fd42a09163ed964aa61e7eafda1da74302892c16039463ef2381aeed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a9a4adffb0cb64c84927b9c9e698b04032189c0c7bd1ddef887e51539bc8179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PComp.scale (c : PComp) (n : ℕ) : PComp :=
  { c with c := c.c.scale n, src := c.src.scale n }

/--
`PComp.add c1 c2 elimVar` creates the result of summing the linear comparisons `c1` and `c2`,
during the process of eliminating the variable `elimVar`.
The computation assumes, but does not enforce, that `elimVar` appears in both `c1` and `c2`
and does not appear in the sum.
Computing the sum of the two comparisons is easy; the complicated details lie in tracking the
additional fields of `PComp`.
* The historical set `pcomp.history` of `c1 + c2` is the union of the two historical sets.
* `vars` is the union of `c1.vars` and `c2.vars`.
* The effectively eliminated variables of `c1 + c2` are the union of the two effective sets,
  with `elim_var` inserted.
* The implicitly eliminated variables of `c1 + c2` are those that appear in
  `vars` but not `c.vars` or `effective`.
(Note that the description of the implicitly eliminated variables of `c1 + c2` in the algorithm
described in Section 6 of https://doi.org/10.1016/B978-0-444-88771-9.50019-2 seems to be wrong:
that says it should be `(c1.implicit.union c2.implicit).sdiff explicit`.
Since the implicitly eliminated sets start off empty for the assumption,
this formula would leave them always empty.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a5dbce939fea364900c3d3fe5f8bf23fe88d591` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
