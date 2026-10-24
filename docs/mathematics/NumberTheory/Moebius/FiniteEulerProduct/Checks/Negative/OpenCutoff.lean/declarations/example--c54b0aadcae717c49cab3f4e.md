# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d32369e3de4ec46e83952fcf4265c6ee296a6b710d3cdf77e6bc4acbc83ed62",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--c54b0aadcae717c49cab3f4e",
  "source": {
    "blob": "485755d3165a3e292120f4bec34d2bc0a53bdeea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 10,
    "line": 4,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteEulerProduct/Checks/Negative/OpenCutoff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c54b0aadcae717c49cab3f4ea9a63d5bd05ec70895d63160583d3bf505b1469c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteEulerProduct/Checks/Negative/OpenCutoff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d32369e3de4ec46e83952fcf4265c6ee296a6b710d3cdf77e6bc4acbc83ed62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4–10.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {R : Type*} [CommRing R] (f : ArithmeticFunction R)
    (hf : f.IsMultiplicative) (N : ℕ) :
    (∏ p ∈ Nat.primesLE N, (1-f p)) =
      (∑ n ∈ Finset.Icc 1 N, (μ n : R) * f n) +
      ∑ S ∈ (Nat.primesLE N).powerset.filter (fun S => N ≤ ∏ p ∈ S, p),
        (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p) :=
  finite_euler_product_cutoff f hf N
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/Moebius/FiniteEulerProduct/Checks/Negative/OpenCutoff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteEulerProduct/Checks/Negative/OpenCutoff.lean#L4).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `485755d3165a3e292120f4bec34d2bc0a53bdeea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
