# ofEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73f45a0e5d6ecfc1175aba63c496307f0be1f01ca20480ecc497749998e0179a",
  "kind": "def",
  "lexical_name": "ofEquiv",
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
  "slug": "ofequiv--ab7f5135abf6b1c16d2d363a",
  "source": {
    "blob": "198183b8a7758a2612c4359cfc6911f0023b62a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 294,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Variant006b9feac7260540dd3d91dc7eab1bdb7012035f102cc78d480e7a1078809ab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab7f5135abf6b1c16d2d363ae3d9af98785d26690572f5e2bb399050dd537ad7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Variant006b9feac7260540dd3d91dc7eab1bdb7012035f102cc78d480e7a1078809ab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73f45a0e5d6ecfc1175aba63c496307f0be1f01ca20480ecc497749998e0179a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofEquiv
    (identity : TranslationId)
    (sourceModel targetModel : WorldModelVersionId)
    (sourceContext targetContext : AssumptionContext)
    (authority : AuthorityClass)
    (equiv : Source ≃ Target)
    (sourcePredicate : Source → Prop)
    (targetPredicate : Target → Prop)
    (meaning : ∀ x, sourcePredicate x ↔ targetPredicate (equiv x)) :
    ModelTranslation Source Target where
  identity := identity
  sourceModel := sourceModel
  targetModel := targetModel
  relation := .exactEquivalence
  sourceContext := sourceContext
  targetContext := targetContext
  objectMap := equiv
  sourceProposition := sourcePredicate
  targetProposition := targetPredicate
  proofTransport := some ⟨fun x proof ↦ (meaning x).mp proof⟩
  counterexampleTransport := none
  preservesTyping := True
  preservesDeclaredMeaning := True
  assumptionsMapped := True
  sourceAuthority := authority
  targetAuthority := authority
  authorityNonIncreasing := Nat.le_refl _
  provenance := []
  provenancePreserved := True
  versionCompatible := True
  unsupportedScope := []

/-- TRN-02: exact equivalence maps have a left inverse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Variant006b9feac7260540dd3d91dc7eab1bdb7012035f102cc78d480e7a1078809ab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Variant006b9feac7260540dd3d91dc7eab1bdb7012035f102cc78d480e7a1078809ab0.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `198183b8a7758a2612c4359cfc6911f0023b62a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
