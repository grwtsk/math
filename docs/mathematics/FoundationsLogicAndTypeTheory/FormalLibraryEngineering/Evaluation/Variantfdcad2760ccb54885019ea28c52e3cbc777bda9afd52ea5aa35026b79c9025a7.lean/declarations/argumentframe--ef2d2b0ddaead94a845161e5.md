# argumentFrame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32f882add21b04d1b677aa0930eb0bd241c3acaedb3207d3a8778dff9dc3d01f",
  "kind": "def",
  "lexical_name": "argumentFrame",
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
  "slug": "argumentframe--ef2d2b0ddaead94a845161e5",
  "source": {
    "blob": "f1364eced21911756fc8144bb689b7a45cbfe663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 561,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variantfdcad2760ccb54885019ea28c52e3cbc777bda9afd52ea5aa35026b79c9025a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef2d2b0ddaead94a845161e5e8da8241114e9b439823956703413814d6aaaa1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variantfdcad2760ccb54885019ea28c52e3cbc777bda9afd52ea5aa35026b79c9025a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32f882add21b04d1b677aa0930eb0bd241c3acaedb3207d3a8778dff9dc3d01f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def argumentFrame {T : ActiveType Ω C} (he : T.type = .pi t.domainNF t.bodyNF)
    {n : Expr S} (hn : Ω.HasType n t.domainNF)
    (ha : ActiveLayer P C (Ω.profile (t.targetNF n))) : FrameKey Ω C T where
  domain := t.domainNF
  body := t.bodyNF
  product := he
  argument := n.normalForm
  normal := (Expr.normalForm_spec (hn.weaklyNormalizing hw)).2
  typed := hn.normalForm hw
  active := by
    have h1 : (t.bodyNF.instantiate n).normalForm = (t.bodyNF.instantiate
      n.normalForm).normalForm := by
      have hs := t.target_typed hn
      have hn' := hn.normalForm hw
      have hs' := t.target_typed hn'
      rw [t.target_eq hn] at hs
      rw [t.target_eq hn'] at hs'
      obtain ⟨s, hb⟩ := Ω.frame_target_sorted t.product_typed hn
      obtain ⟨s', hb'⟩ := Ω.frame_target_sorted t.product_typed hn'
      exact Expr.normalForm_converts (hb.weaklyNormalizing hw) (hb'.weaklyNormalizing hw)
        ((Expr.normalForm_spec (hn.weaklyNormalizing hw)).1.converts.instantiate_right t.bodyNF)
    rw [t.target_eq hn, h1] at ha
    simpa only [ContextTower.profile_normalForm] using ha

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variantfdcad2760ccb54885019ea28c52e3cbc777bda9afd52ea5aa35026b79c9025a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variantfdcad2760ccb54885019ea28c52e3cbc777bda9afd52ea5aa35026b79c9025a7.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1364eced21911756fc8144bb689b7a45cbfe663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
