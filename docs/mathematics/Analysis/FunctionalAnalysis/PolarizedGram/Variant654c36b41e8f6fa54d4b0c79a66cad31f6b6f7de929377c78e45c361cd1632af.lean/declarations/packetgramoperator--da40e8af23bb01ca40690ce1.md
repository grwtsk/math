# packetGramOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7b5394e75bfb47d863daaa2f9f58c76016be3e1cd5b72670779419e2bb8811e",
  "kind": "def",
  "lexical_name": "packetGramOperator",
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
  "slug": "packetgramoperator--da40e8af23bb01ca40690ce1",
  "source": {
    "blob": "520af6481ea913470683d426a573a3c57b24597c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 71,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PolarizedGram/Variant654c36b41e8f6fa54d4b0c79a66cad31f6b6f7de929377c78e45c361cd1632af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da40e8af23bb01ca40690ce11b7953debd5929f00dadce211b521cff2ca5e390",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PolarizedGram/Variant654c36b41e8f6fa54d4b0c79a66cad31f6b6f7de929377c78e45c361cd1632af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7b5394e75bfb47d863daaa2f9f58c76016be3e1cd5b72670779419e2bb8811e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def packetGramOperator {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N) :
    EuclideanSpace ℂ frame.Atom →L[ℂ] EuclideanSpace ℂ frame.Atom :=
  (packetSynthesisCLM frame)† ∘L packetSynthesisCLM frame

/-! ## Scalar polarization is unitary conjugation -/

/-- Multiplication by a complex unit of norm one, packaged as a complex-linear
isometry. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PolarizedGram/Variant654c36b41e8f6fa54d4b0c79a66cad31f6b6f7de929377c78e45c361cd1632af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PolarizedGram/Variant654c36b41e8f6fa54d4b0c79a66cad31f6b6f7de929377c78e45c361cd1632af.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520af6481ea913470683d426a573a3c57b24597c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
