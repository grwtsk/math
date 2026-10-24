# TendstoInMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e298c8bfc24702f290dbe6b48ba379b5e0c7a6b1791f7ea13681d8c7f28ef456",
  "kind": "def",
  "lexical_name": "TendstoInMeasure",
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
  "slug": "tendstoinmeasure--815c35d8ac05249bf0e47b22",
  "source": {
    "blob": "abe8c6ec3bb621a51511053bc209f63cfa1a03eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 61,
    "path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:815c35d8ac05249bf0e47b221c76fe25d991e656a85a787fe29c7bf012cdb073",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e298c8bfc24702f290dbe6b48ba379b5e0c7a6b1791f7ea13681d8c7f28ef456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TendstoInMeasure [Dist E] {_ : MeasurableSpace α} (μ : Measure α) (f : ι → α → E) (l : Filter ι)
    (g : α → E) : Prop :=
  ∀ ε, 0 < ε → Tendsto (fun i => μ { x | ε ≤ dist (f i x) (g x) }) l (𝓝 0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Varianta78418b25dcc481019b63eda2b5f73891666e865115f4088c901aa8d74d56aa9.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abe8c6ec3bb621a51511053bc209f63cfa1a03eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
