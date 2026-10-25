# ofEquiv_apply_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7113d9d-3f3a-8ee7-e4b3-2d4f3ad02f0b",
  "kind": "theorem",
  "lexical_name": "ofEquiv_apply_inverse",
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
  "slug": "ofequiv-apply-inverse--81b101e23ed9db5d751a39c3",
  "source": {
    "blob": "94193bb545d1415ceae7f407879c9ad5cdad4794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 351,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Varianta8106742f694881000c24e345253ccb002afa70d6cd44c993073736f7c4b4d48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81b101e23ed9db5d751a39c36c1628a9bedfac2a76ec5c00b6752190bc65fbfa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Varianta8106742f694881000c24e345253ccb002afa70d6cd44c993073736f7c4b4d48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7113d9d-3f3a-8ee7-e4b3-2d4f3ad02f0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofEquiv_apply_inverse
    (identity : TranslationId)
    (sourceModel targetModel : WorldModelVersionId)
    (sourceContext targetContext : AssumptionContext)
    (authority : AuthorityClass)
    (equiv : Source ≃ Target)
    (sourcePredicate : Source → Prop)
    (targetPredicate : Target → Prop)
    (meaning : ∀ x, sourcePredicate x ↔ targetPredicate (equiv x))
    (y : Target) :
    (ofEquiv identity sourceModel targetModel sourceContext targetContext
      authority equiv sourcePredicate targetPredicate meaning).objectMap
        (equiv.symm y) = y :=
  equiv.apply_symm_apply y

/--
Compose two translations only after supplying the middle-version, context,
meaning, authority, and relation compatibility proofs.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Varianta8106742f694881000c24e345253ccb002afa70d6cd44c993073736f7c4b4d48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Varianta8106742f694881000c24e345253ccb002afa70d6cd44c993073736f7c4b4d48.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94193bb545d1415ceae7f407879c9ad5cdad4794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
