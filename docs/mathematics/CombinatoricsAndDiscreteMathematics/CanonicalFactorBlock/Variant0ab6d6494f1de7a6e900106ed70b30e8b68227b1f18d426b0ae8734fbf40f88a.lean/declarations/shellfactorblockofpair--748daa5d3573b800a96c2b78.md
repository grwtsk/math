# shellFactorBlockOfPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0664d1122fa0347da5f7a127e574ad5157dd6811bad8f798403ba9c5e8b10aa1",
  "kind": "def",
  "lexical_name": "shellFactorBlockOfPair",
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
  "slug": "shellfactorblockofpair--748daa5d3573b800a96c2b78",
  "source": {
    "blob": "cbb03424e1107c51b98bd3b15ae45091417f206d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:748daa5d3573b800a96c2b78f12313901eb2a58602bb77a30d7cd17f97d62de3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0664d1122fa0347da5f7a127e574ad5157dd6811bad8f798403ba9c5e8b10aa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shellFactorBlockOfPair {N q : ℕ}
    (pair : {p : VaughanScaleIndex N × VaughanScaleIndex N //
      IsEffectiveTypeIIShellPair N q p}) :
    TypeIIShellFactorBlock N q where
  leftExponent := halfOpenFactorExponent pair.1.1.1
  rightExponent := halfOpenFactorExponent pair.1.2.1
  exponentRelation := effectiveShellPair_exponentRelation pair.2
  nonempty_effective := by
    have hmpos : 0 < pair.1.1.1 := by
      have hm := pair.2.1
      omega
    have hkpos : 0 < pair.1.2.1 := by
      have hk := pair.2.2.1
      omega
    refine ⟨pair.1.1, pair.1.2, pair.2.1, pair.2.2.1, ?_, ?_, ?_, ?_,
      pair.2.2.2.1, pair.2.2.2.2.1, pair.2.2.2.2.2⟩
    · exact pow_halfOpenFactorExponent_le hmpos
    · exact lt_pow_halfOpenFactorExponent_succ hmpos
    · exact pow_halfOpenFactorExponent_le hkpos
    · exact lt_pow_halfOpenFactorExponent_succ hkpos

/-- The finite nonduplicative collection of exponent blocks meeting the
effective Type II support in product shell `q`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb03424e1107c51b98bd3b15ae45091417f206d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
