# abstractMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0d2f17fb634eff0ed384ef2b80d1f7b345ce8868344f1ae3dc21b5e547df8f9",
  "kind": "def",
  "lexical_name": "abstractMul",
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
  "slug": "abstractmul--4bccf2f0d7306743537f5397",
  "source": {
    "blob": "6f3bf1be316a2ff1e99a6172560489dfa739fbb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 938,
    "line": 917,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bccf2f0d7306743537f539706d5166671dfae7f219bbfacc7cb26571f3151c5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0d2f17fb634eff0ed384ef2b80d1f7b345ce8868344f1ae3dc21b5e547df8f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 917–938.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def abstractMul : Function.const _ True (id Nat.zero_lt_one) := trivial

set_option pp.proofs true in
/-- info: abstractMul : Function.const (0 < 1) True (id Nat.zero_lt_one) -/
#guard_msgs in
#check abstractMul
set_option pp.proofs true in
/-- info: abstractAdd : Function.const (0 < 1) True (id Nat.zero_lt_one) -/
#guard_msgs in
#check abstractAdd

-- We give a warning if an existing translation is overwritten:
/--
warning: `abstractMul` was already translated to `abstractAdd` instead of `someOtherTranslation`.
Unless the original translation was wrong, please remove this `to_additive` attribute.

Note: This linter can be disabled with `set_option linter.translateOverwrite false`
-/
#guard_msgs in
attribute [to_additive someOtherTranslation] abstractMul

-- Test that we don't blindly translate the prefix of a name.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantedcc28620136b6738ac01be3b478263e5f808bb1c0c463201ed0e33239d2dab1.lean#L917).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f3bf1be316a2ff1e99a6172560489dfa739fbb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
