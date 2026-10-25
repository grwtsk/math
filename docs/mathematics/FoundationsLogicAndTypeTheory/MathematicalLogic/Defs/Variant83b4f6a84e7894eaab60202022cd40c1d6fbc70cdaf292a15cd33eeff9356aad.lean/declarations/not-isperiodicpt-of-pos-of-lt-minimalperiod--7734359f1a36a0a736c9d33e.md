# not_isPeriodicPt_of_pos_of_lt_minimalPeriod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7762b259-60b2-5e42-ba7b-c48e6cff4a34",
  "kind": "theorem",
  "lexical_name": "not_isPeriodicPt_of_pos_of_lt_minimalPeriod",
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
  "slug": "not-isperiodicpt-of-pos-of-lt-minimalperiod--7734359f1a36a0a736c9d33e",
  "source": {
    "blob": "b1a24d13a4eadbfd3c434bbe9548bce54007cdd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83b4f6a84e7894eaab60202022cd40c1d6fbc70cdaf292a15cd33eeff9356aad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7734359f1a36a0a736c9d33e1c1eddc5ab7d76d660fe3b28bec032c117fa37d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83b4f6a84e7894eaab60202022cd40c1d6fbc70cdaf292a15cd33eeff9356aad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7762b259-60b2-5e42-ba7b-c48e6cff4a34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isPeriodicPt_of_pos_of_lt_minimalPeriod :
    ∀ {n : ℕ} (_ : n ≠ 0) (_ : n < minimalPeriod f x), ¬IsPeriodicPt f n x
  | 0, n0, _ => (n0 rfl).elim
  | _ + 1, _, hn => fun hp => Nat.succ_ne_zero _ (hp.eq_zero_of_lt_minimalPeriod hn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83b4f6a84e7894eaab60202022cd40c1d6fbc70cdaf292a15cd33eeff9356aad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83b4f6a84e7894eaab60202022cd40c1d6fbc70cdaf292a15cd33eeff9356aad.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1a24d13a4eadbfd3c434bbe9548bce54007cdd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
