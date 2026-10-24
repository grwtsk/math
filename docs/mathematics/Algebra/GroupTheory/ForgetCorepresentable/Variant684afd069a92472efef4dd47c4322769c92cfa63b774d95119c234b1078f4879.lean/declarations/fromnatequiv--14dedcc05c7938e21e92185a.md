# fromNatEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:473f60faddec272d82dc22fd204944e09b8724e914c7728e843b8643339f7d6d",
  "kind": "def",
  "lexical_name": "fromNatEquiv",
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
  "slug": "fromnatequiv--14dedcc05c7938e21e92185a",
  "source": {
    "blob": "19e98ef3fda6ba40ddf342bb8b58e2b0cfdd7f17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 71,
    "path": "GRWTSK/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14dedcc05c7938e21e92185af1eeec54ac5078934ddb21453339e73f7ac57c57",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:473f60faddec272d82dc22fd204944e09b8724e914c7728e843b8643339f7d6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromNatEquiv (α : Type u) [AddMonoid α] : (ℕ →+ α) ≃ α := (multiplesHom _).symm

/-- The equivalence `(ULift ℕ →+ α) ≃ α` for any additive monoid `α`. -/
@[deprecated uliftMultiplesHom (since := "2025-05-11")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ForgetCorepresentable/Variant684afd069a92472efef4dd47c4322769c92cfa63b774d95119c234b1078f4879.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19e98ef3fda6ba40ddf342bb8b58e2b0cfdd7f17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
