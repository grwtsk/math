# natDegree_mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2d25a84-ac07-8f96-1b46-893d92a4becb",
  "kind": "theorem",
  "lexical_name": "natDegree_mul'",
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
  "slug": "natdegree-mul--8baa037dc0139ae3c8ba83c8",
  "source": {
    "blob": "dec5672ce8de15bbbae069dd11df8348b9943a92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 175,
    "path": "GRWTSK/Algebra/Monic/Variant0f6b03356de0a2593fcfb46535c01f361c135bb121f3a913f880a2430bfcdb27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8baa037dc0139ae3c8ba83c879dc8da73297abbb153b070e4166fec4c93853c5",
  "verification": {
    "reference": "docs/verification/Algebra/Monic/Variant0f6b03356de0a2593fcfb46535c01f361c135bb121f3a913f880a2430bfcdb27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2d25a84-ac07-8f96-1b46-893d92a4becb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem natDegree_mul' (hp : p.Monic) (hq : q ≠ 0) :
    (p * q).natDegree = p.natDegree + q.natDegree := by
  rw [natDegree_mul']
  simpa [hp.leadingCoeff, leadingCoeff_ne_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Monic/Variant0f6b03356de0a2593fcfb46535c01f361c135bb121f3a913f880a2430bfcdb27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Monic/Variant0f6b03356de0a2593fcfb46535c01f361c135bb121f3a913f880a2430bfcdb27.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dec5672ce8de15bbbae069dd11df8348b9943a92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
