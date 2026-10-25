# WPMonad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edbc07b9531a40def5d18dfaf0cfb15792f21ed49875d08f47031a5efa858a20",
  "kind": "class",
  "lexical_name": "WPMonad",
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
  "slug": "wpmonad--1adb7dfe7b00022ca4919dd5",
  "source": {
    "blob": "d1dedb257778bb87b45c68c8d17aa6fdd3558336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2e58063e05ed0911711feecc20f1816a3a9dd218ec3c1cf9a3e844c334822c56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1adb7dfe7b00022ca4919dd53b813c1fb2e886ca59385bdc1dd7c2dfb82836fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2e58063e05ed0911711feecc20f1816a3a9dd218ec3c1cf9a3e844c334822c56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edbc07b9531a40def5d18dfaf0cfb15792f21ed49875d08f47031a5efa858a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class WPMonad (m : Type u → Type v) (Pred : outParam (Type w)) (EPred : outParam (Type w'))
    [Monad m] [Assertion Pred] [Assertion EPred] extends LawfulMonad m where
  /-- The weakest precondition interpretation of `m` at every result type. -/
  toWP : ∀ α, WP (m α) α Pred EPred
  /-- Soundness of `pure`: the postcondition applied to `x` implies the weakest precondition of
  `pure x`. -/
  pure_le_wp_pure (x : α) (post : α → Pred) (epost : EPred) :
    post x ⊑ (toWP α).wp (pure (f := m) x) post epost
  /-- Soundness of `bind`: composing weakest preconditions is at least as strong as the weakest
  precondition of `>>=`. -/
  bind_le_wp_bind (x : m α) (f : α → m β) (post : β → Pred) (epost : EPred) :
    (toWP α).wp x (fun a => (toWP β).wp (f a) post epost) epost ⊑ (toWP β).wp (x >>= f) post epost

/-- A monadic `WP` interpretation is sourced from the monad's `WPMonad` instance. Low priority so a
program type with a bespoke `WP` instance (e.g. a non-monadic one) is preferred. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2e58063e05ed0911711feecc20f1816a3a9dd218ec3c1cf9a3e844c334822c56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2e58063e05ed0911711feecc20f1816a3a9dd218ec3c1cf9a3e844c334822c56.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1dedb257778bb87b45c68c8d17aa6fdd3558336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
