# derivativeFinsupp_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2ff4836-eed1-a64c-cb9e-7e1cb7ac2de4",
  "kind": "theorem",
  "lexical_name": "derivativeFinsupp_X",
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
  "slug": "derivativefinsupp-x--99a1a49bf05f943e84f5b021",
  "source": {
    "blob": "19329cdbd482713d1e91d707fcaacd08a26c28c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 433,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantcb8d2576a5c9a164249d0778c2b4bb571100f5cc826adc49547147ffe460ea1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99a1a49bf05f943e84f5b021177b1d16c9a74884480702037617936665be450b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivative/Variantcb8d2576a5c9a164249d0778c2b4bb571100f5cc826adc49547147ffe460ea1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2ff4836-eed1-a64c-cb9e-7e1cb7ac2de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivativeFinsupp_X : derivativeFinsupp (X : R[X]) = .single 0 X + .single 1 1 := by
  ext i : 1
  match i with
  | 0 => simp
  | 1 => simp
  | (n + 2) => simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variantcb8d2576a5c9a164249d0778c2b4bb571100f5cc826adc49547147ffe460ea1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantcb8d2576a5c9a164249d0778c2b4bb571100f5cc826adc49547147ffe460ea1d.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19329cdbd482713d1e91d707fcaacd08a26c28c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
