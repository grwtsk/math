# even_power_of_cube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f876424d785c866272bb0f4d4b9a16619e6bb4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba7f9760-5df8-08a2-49cd-a3fbbb95498a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e3a945e-1c8e-151f-7169-37427bbb9344",
  "kind": "theorem",
  "lexical_name": "even_power_of_cube",
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
  "slug": "even-power-of-cube--4595ae3b927b4e15e11d6d44",
  "source": {
    "blob": "2f876424d785c866272bb0f4d4b9a16619e6bb4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4595ae3b927b4e15e11d6d440787b0860c909d1493fca998f09755091a4d667a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e3a945e-1c8e-151f-7169-37427bbb9344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem even_power_of_cube (x : A) (θ : ℝ)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) (n : ℕ) :
    x ^ (2 * n + 2) = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x ^ 2) := by
  calc
    x ^ (2 * n + 2) = x ^ (2 * n + 1) * x := by rw [pow_succ]
    _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x) * x := by
      rw [odd_power_of_cube x θ hcube n]
    _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • (x * x)) := by
      rw [smul_mul_assoc]
    _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x ^ 2) := by rw [pow_two]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Rodrigues/Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f876424d785c866272bb0f4d4b9a16619e6bb4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
