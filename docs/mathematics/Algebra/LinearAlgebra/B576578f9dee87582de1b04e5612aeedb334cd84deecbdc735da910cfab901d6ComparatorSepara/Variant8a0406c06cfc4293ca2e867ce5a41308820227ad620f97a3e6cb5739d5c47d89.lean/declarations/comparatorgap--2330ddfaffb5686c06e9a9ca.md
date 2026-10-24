# comparatorGap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96091503975ae05a86dc190cda9b92d2db6c5b39d5e76bc114ee71f6559f44b2",
  "kind": "def",
  "lexical_name": "comparatorGap",
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
  "slug": "comparatorgap--2330ddfaffb5686c06e9a9ca",
  "source": {
    "blob": "10732377c769540b7f3f7743ae53073d47f8c71b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara/Variant8a0406c06cfc4293ca2e867ce5a41308820227ad620f97a3e6cb5739d5c47d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2330ddfaffb5686c06e9a9cad4b3e24bcf6b5a013fd8b3aa9d407b5c4c1acfdd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara/Variant8a0406c06cfc4293ca2e867ce5a41308820227ad620f97a3e6cb5739d5c47d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96091503975ae05a86dc190cda9b92d2db6c5b39d5e76bc114ee71f6559f44b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comparatorGap
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) : ℝ :=
  (Q.responseDifference I x) ^ 2

/-- Comparator gap is always nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara/Variant8a0406c06cfc4293ca2e867ce5a41308820227ad620f97a3e6cb5739d5c47d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara/Variant8a0406c06cfc4293ca2e867ce5a41308820227ad620f97a3e6cb5739d5c47d89.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10732377c769540b7f3f7743ae53073d47f8c71b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
