# oreDivAddChar'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:420c8d61c915176593a96f20301e431b7ecc1339937184ce2f939d73ad1d1039",
  "kind": "def",
  "lexical_name": "oreDivAddChar'",
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
  "slug": "oredivaddchar--459d1721d03315633ef519df",
  "source": {
    "blob": "6a06b433741f3b74838de3af4a9b25caefd68eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 624,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:459d1721d03315633ef519df31bd35e2d2982fb276ba16e243701b8b89aee7ab",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:420c8d61c915176593a96f20301e431b7ecc1339937184ce2f939d73ad1d1039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oreDivAddChar' (r r' : R) (s s' : S) :
    Σ'r'' : R,
      Σ's'' : S, (s : R) * s'' = s' * r'' ∧ r /ₒ s + r' /ₒ s' = (r * s'' + r' * r'') /ₒ (s * s'') :=
  ⟨oreNum (s : R) s', oreDenom (s : R) s', ore_eq (s : R) s', oreDiv_add_oreDiv⟩
#align ore_localization.ore_div_add_char' OreLocalization.oreDivAddChar'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a06b433741f3b74838de3af4a9b25caefd68eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
