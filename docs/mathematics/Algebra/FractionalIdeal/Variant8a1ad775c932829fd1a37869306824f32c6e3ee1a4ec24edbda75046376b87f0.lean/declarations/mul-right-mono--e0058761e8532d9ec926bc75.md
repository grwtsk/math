# mul_right_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c99a6b1-08fc-196e-f963-129d40069e09",
  "kind": "theorem",
  "lexical_name": "mul_right_mono",
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
  "slug": "mul-right-mono--e0058761e8532d9ec926bc75",
  "source": {
    "blob": "50b3a22fa0e57c277d4e768d232ef017d5bae041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 577,
    "path": "GRWTSK/Algebra/FractionalIdeal/Variant8a1ad775c932829fd1a37869306824f32c6e3ee1a4ec24edbda75046376b87f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0058761e8532d9ec926bc75405897c5d7fcd11527d90705b75637999d02106b",
  "verification": {
    "reference": "docs/verification/Algebra/FractionalIdeal/Variant8a1ad775c932829fd1a37869306824f32c6e3ee1a4ec24edbda75046376b87f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c99a6b1-08fc-196e-f963-129d40069e09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_right_mono (I : FractionalIdeal S P) : Monotone fun J => J * I := by
  intro J J' h
  simp only [mul_def]
  exact mul_le.mpr fun x hx y hy => mul_mem_mul (h hx) hy
#align fractional_ideal.mul_right_mono FractionalIdeal.mul_right_mono

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionalIdeal/Variant8a1ad775c932829fd1a37869306824f32c6e3ee1a4ec24edbda75046376b87f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionalIdeal/Variant8a1ad775c932829fd1a37869306824f32c6e3ee1a4ec24edbda75046376b87f0.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50b3a22fa0e57c277d4e768d232ef017d5bae041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
