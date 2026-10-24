# isLittleO_atTop_of_degree_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81c3e549-3072-d9ce-4fde-40971c259c3d",
  "kind": "theorem",
  "lexical_name": "isLittleO_atTop_of_degree_lt",
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
  "slug": "islittleo-attop-of-degree-lt--0b78f4d77fc4e415eb115791",
  "source": {
    "blob": "a1bb42a81bff9caf112db484783f6489fbf4867f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 297,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b78f4d77fc4e415eb1157912459af10be183508f2c39a5fc11bf8c55d2d5f4b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81c3e549-3072-d9ce-4fde-40971c259c3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_atTop_of_degree_lt (h : P.degree < Q.degree) : P.eval =o[atTop] Q.eval := by
  by_cases hp : P = 0
  · simp [hp]
  · have hq : Q ≠ 0 := ne_zero_of_degree_ge_degree h.le hp
    have hPQ : ∀ᶠ x in atTop, Q.eval x = 0 → P.eval x = 0 :=
      mem_of_superset (eventually_atTop_not_isRoot Q hq) fun x h h' ↦ absurd h' h
    exact isLittleO_of_tendsto' hPQ (div_tendsto_atTop_zero_of_degree_lt P Q h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantf1f1fdeaa55c12033227bc333bf95d374078cabf496539d5a61ca92822e40fce.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1bb42a81bff9caf112db484783f6489fbf4867f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
