# actual_integer_span_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85d38a6b-fc4d-15f9-ca8d-622fa138ee32",
  "kind": "theorem",
  "lexical_name": "actual_integer_span_eq",
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
  "slug": "actual-integer-span-eq--56900ff037895474d588af8b",
  "source": {
    "blob": "7960f32047be940ebcd1ce2276753faa837b0472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56900ff037895474d588af8be9795251afd96900c41bbfc3a68cf1c2662e9184",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85d38a6b-fc4d-15f9-ca8d-622fa138ee32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_integer_span_eq (A : ℝ) (hA : 1 ≤ A) :
    Submodule.span ℂ (range (actualIntegerOrbit A hA)) =
      Submodule.span ℂ (range (integerOrbit A hA)) :=
  span_range_eq (fun n : {n : ℕ // 0 < n} => (n.val : ℝ))
    (fun n => by exact_mod_cast n.property) (actualComplexL2 A hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt01/Variantf6b4533e201cfec896edbc3302e9140ebe235b0bc801098f0e10b68785028e02.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7960f32047be940ebcd1ce2276753faa837b0472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
