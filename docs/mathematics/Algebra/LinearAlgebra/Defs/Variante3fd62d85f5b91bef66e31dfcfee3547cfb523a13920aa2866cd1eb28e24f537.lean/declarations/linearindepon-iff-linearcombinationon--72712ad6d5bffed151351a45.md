# linearIndepOn_iff_linearCombinationOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a966aa9-1347-11a1-82e0-e6b4a306e1d0",
  "kind": "theorem",
  "lexical_name": "linearIndepOn_iff_linearCombinationOn",
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
  "slug": "linearindepon-iff-linearcombinationon--72712ad6d5bffed151351a45",
  "source": {
    "blob": "2ae3d68d4194746108d192c5bb94dadb0aa991dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 844,
    "line": 839,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72712ad6d5bffed151351a4520a080f43aae8319daf5f233ed41d2cc08f4a0ec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a966aa9-1347-11a1-82e0-e6b4a306e1d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 839–844.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndepOn_iff_linearCombinationOn :
    LinearIndepOn R v s ↔ (LinearMap.ker <| Finsupp.linearCombinationOn ι M R v s) = ⊥ :=
  linearIndepOn_iff_linearCombinationOnₛ.trans <|
    LinearMap.ker_eq_bot (M := Finsupp.supported R R s).symm

/-- A version of `linearIndepOn_iff` where the linear combination is a `Finset` sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean#L839).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ae3d68d4194746108d192c5bb94dadb0aa991dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
