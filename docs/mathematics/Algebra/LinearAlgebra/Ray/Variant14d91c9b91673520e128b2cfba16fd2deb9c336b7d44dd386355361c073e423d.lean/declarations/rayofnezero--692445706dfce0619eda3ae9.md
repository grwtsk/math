# rayOfNeZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:365f05121b9536e27933f52bf4471b540e736beb754e53e15198d4eab87322fd",
  "kind": "def",
  "lexical_name": "rayOfNeZero",
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
  "slug": "rayofnezero--692445706dfce0619eda3ae9",
  "source": {
    "blob": "c02d81931a1645c905d13e57e12690b08adeaf51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 261,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variant14d91c9b91673520e128b2cfba16fd2deb9c336b7d44dd386355361c073e423d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:692445706dfce0619eda3ae9066a40847edaf2e9c484178cf1b83bf6b3a5d541",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ray/Variant14d91c9b91673520e128b2cfba16fd2deb9c336b7d44dd386355361c073e423d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:365f05121b9536e27933f52bf4471b540e736beb754e53e15198d4eab87322fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rayOfNeZero (v : M) (h : v ≠ 0) : Module.Ray R M :=
  ⟦⟨v, h⟩⟧
#align ray_of_ne_zero rayOfNeZero

/-- An induction principle for `Module.Ray`, used as `induction x using Module.Ray.ind`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ray/Variant14d91c9b91673520e128b2cfba16fd2deb9c336b7d44dd386355361c073e423d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ray/Variant14d91c9b91673520e128b2cfba16fd2deb9c336b7d44dd386355361c073e423d.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c02d81931a1645c905d13e57e12690b08adeaf51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
