# refinement_increment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66af0efb-0797-0cf9-b9f7-0a6c6696bd62",
  "kind": "theorem",
  "lexical_name": "refinement_increment",
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
  "slug": "refinement-increment--767b60fade5906ac7fb22b99",
  "source": {
    "blob": "976e076f0712861d4e37e595c4af38ae34dd7bb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 46,
    "path": "GRWTSK/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:767b60fade5906ac7fb22b991264d1d2e1c9f8f237629d5e5126a326890460b9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66af0efb-0797-0cf9-b9f7-0a6c6696bd62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem refinement_increment (H : Matrix ι ι ℂ) (Hnext : Matrix κ κ ℂ)
    (I : Matrix κ ι ℂ) (c d : ι → ℂ) (u v : κ → ℂ) :
    pairing Hnext (I *ᵥ c + u) (I *ᵥ d + v) - pairing H c d =
      pairing (Iᴴ * Hnext * I - H) c d +
      pairing Hnext (I *ᵥ c) v + pairing Hnext u (I *ᵥ d) + pairing Hnext u v := by
  rw [pairing_sub, ← pairing_pullback]
  simp only [pairing, star_add, Matrix.mulVec_add, add_dotProduct, dotProduct_add]
  ring

open FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open scoped InnerProductSpace

/-- The existing synthesis theorem identifies the literal signed matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SignedDefect/Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `976e076f0712861d4e37e595c4af38ae34dd7bb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
