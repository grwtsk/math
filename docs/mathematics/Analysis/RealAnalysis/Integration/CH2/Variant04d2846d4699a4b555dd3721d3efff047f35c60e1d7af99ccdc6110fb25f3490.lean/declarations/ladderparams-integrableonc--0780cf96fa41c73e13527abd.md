# LadderParams.IntegrableOnC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9552a35a38455024bb4ea796ba9eb31e7a43b1d0dec59478df11aacff9c1abe7",
  "kind": "def",
  "lexical_name": "LadderParams.IntegrableOnC",
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
  "slug": "ladderparams-integrableonc--0780cf96fa41c73e13527abd",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 447,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0780cf96fa41c73e13527abd3f2416e096798e9ed019efa695d1b6649743c741",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9552a35a38455024bb4ea796ba9eb31e7a43b1d0dec59478df11aacff9c1abe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LadderParams.IntegrableOnC (l : LadderParams) (F : ℂ → ℂ) : Prop :=
  IntegrableOnVSeg 1 0 l.δ F ∧ IntegrableOnHRay l.δ 1 F

/-! ### Truncated contours for the proof of Lemma 5.1

The proof of Lemma 5.1 of \cite{CH2} works at a finite truncation level `σ n` and takes `n → ∞`. -/

/-- The truncated contour `C_n^+` from the proof of Lemma 5.1 of \cite{CH2}: from `1`, follow the
contour `C` leftwards to `σ n + iδ` (up `1 → 1+iδ`, then left along `im = δ`), then up to
`σ n + iT`, then right to `1 + iT`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
