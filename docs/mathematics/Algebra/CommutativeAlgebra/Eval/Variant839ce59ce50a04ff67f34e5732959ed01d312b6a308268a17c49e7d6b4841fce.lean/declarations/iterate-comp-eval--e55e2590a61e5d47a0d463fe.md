# iterate_comp_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfa01402-dfda-e218-557f-f90adb3c4768",
  "kind": "theorem",
  "lexical_name": "iterate_comp_eval",
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
  "slug": "iterate-comp-eval--e55e2590a61e5d47a0d463fe",
  "source": {
    "blob": "c803964f6b2b62797c4854e566346e08ac1196b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1097,
    "line": 1092,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant839ce59ce50a04ff67f34e5732959ed01d312b6a308268a17c49e7d6b4841fce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e55e2590a61e5d47a0d463febc9e3fbdc5a9ca8821b81679d833005245cbadc3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant839ce59ce50a04ff67f34e5732959ed01d312b6a308268a17c49e7d6b4841fce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfa01402-dfda-e218-557f-f90adb3c4768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1092–1097.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_comp_eval :
    ∀ (k : ℕ) (t : R), (p.comp^[k] q).eval t = (fun x => p.eval x)^[k] (q.eval t) :=
  iterate_comp_eval₂ _
#align polynomial.iterate_comp_eval Polynomial.iterate_comp_eval

/-- `comp p`, regarded as a ring homomorphism from `R[X]` to itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant839ce59ce50a04ff67f34e5732959ed01d312b6a308268a17c49e7d6b4841fce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant839ce59ce50a04ff67f34e5732959ed01d312b6a308268a17c49e7d6b4841fce.lean#L1092).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c803964f6b2b62797c4854e566346e08ac1196b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
