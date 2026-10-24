# recursiveRawCumulantFamily_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:345a8559-9bef-d114-cade-59c5392199f8",
  "kind": "theorem",
  "lexical_name": "recursiveRawCumulantFamily_two",
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
  "slug": "recursiverawcumulantfamily-two--3eb3419650c3a8072904faac",
  "source": {
    "blob": "4d58a37b3c6a03217ba20fd7d1bc0bf7994634d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant04d74d6ecc8b89290821811cae7c621309bd5fee06544c7e7cc536e6af40ea38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3eb3419650c3a8072904faac7e92d8983eb47fd2fa4d12f5c265b6b31f96b0c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant04d74d6ecc8b89290821811cae7c621309bd5fee06544c7e7cc536e6af40ea38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:345a8559-9bef-d114-cade-59c5392199f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recursiveRawCumulantFamily_two
    (theta : E)
    (directions : Fin 2 → E) :
    F.recursiveRawCumulantFamily theta 2 directions =
      F.secondDirectionalCumulant theta directions := by
  rw [recursiveRawCumulantFamily,
    recursiveCumulantFamily_eq_moment_sub_proper
      (F.rawMomentHierarchy theta)
      2 (Nat.succ_pos 1) directions,
    F.recursiveRawProperContribution_two,
    F.rawMomentHierarchy_two_eq_second_add_first_mul_first]
  ring

/-- Through order two, the recursive raw hierarchy agrees with the verified
finite log-affine analytic cumulants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant04d74d6ecc8b89290821811cae7c621309bd5fee06544c7e7cc536e6af40ea38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderTwoRecursiveCumulant/Variant04d74d6ecc8b89290821811cae7c621309bd5fee06544c7e7cc536e6af40ea38.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d58a37b3c6a03217ba20fd7d1bc0bf7994634d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
