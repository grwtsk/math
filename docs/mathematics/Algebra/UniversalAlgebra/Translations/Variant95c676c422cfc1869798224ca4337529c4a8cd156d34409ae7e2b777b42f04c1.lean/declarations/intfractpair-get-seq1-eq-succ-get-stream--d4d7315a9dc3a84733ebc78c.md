# IntFractPair.get?_seq1_eq_succ_get?_stream

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de5e6253-29ec-f442-a82d-bb995c775390",
  "kind": "theorem",
  "lexical_name": "IntFractPair.get?_seq1_eq_succ_get?_stream",
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
  "slug": "intfractpair-get-seq1-eq-succ-get-stream--d4d7315a9dc3a84733ebc78c",
  "source": {
    "blob": "9ded5fcd01cb1f423a612cdb8b44d3eabbf15feb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 198,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4d7315a9dc3a84733ebc78ce9e5bebdac4ca3b0cd95ef9c29d930393698dd8c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de5e6253-29ec-f442-a82d-bb995c775390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntFractPair.get?_seq1_eq_succ_get?_stream :
    (IntFractPair.seq1 v).snd.get? n = (IntFractPair.stream v) (n + 1) :=
  rfl
#align generalized_continued_fraction.int_fract_pair.nth_seq1_eq_succ_nth_stream GeneralizedContinuedFraction.IntFractPair.get?_seq1_eq_succ_get?_stream

section Termination

/-!
#### Translation of the Termination of the Sequences

Let's first show how the termination of one sequence implies the termination of another sequence.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ded5fcd01cb1f423a612cdb8b44d3eabbf15feb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
