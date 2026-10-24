# LadderParams.IntegrableOnCinf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30088902f5a77884056e8d66cbc4b15a5669bdb71d746f9349d17390106662c9",
  "kind": "def",
  "lexical_name": "LadderParams.IntegrableOnCinf",
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
  "slug": "ladderparams-integrableoncinf--d0f8511d871b4d0e8f316f4a",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 437,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0f8511d871b4d0e8f316f4ae8296e631580b6600713f631f76a4c406a1b79a8",
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

Occurrence: `declaration:30088902f5a77884056e8d66cbc4b15a5669bdb71d746f9349d17390106662c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LadderParams.IntegrableOnCinf (l : LadderParams) (F : ℂ → ℂ) : Prop :=
  IntegrableOnHRay l.T 1 F ∧ IntegrableOnHRay (-l.T) 1 F

/-- The oriented line integral of `F` along the simplified admissible contour `C`: up the segment
`1 → 1 + iδ`, then along the horizontal ray `1 + iδ → -∞ + iδ` (traversed leftward, hence the
minus sign on the ray). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
