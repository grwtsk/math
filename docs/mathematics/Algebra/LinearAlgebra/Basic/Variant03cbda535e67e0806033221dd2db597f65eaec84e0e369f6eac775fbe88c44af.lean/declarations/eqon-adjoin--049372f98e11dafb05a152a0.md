# eqOn_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8843fa62-2909-d37f-f1b9-74330e3574e4",
  "kind": "theorem",
  "lexical_name": "eqOn_adjoin",
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
  "slug": "eqon-adjoin--049372f98e11dafb05a152a0",
  "source": {
    "blob": "4cef11039c6087e1ae3c40142ce076d17870708c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:049372f98e11dafb05a152a0d589d18b7c1d627043148ce8e69b7eff6d17d8a7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8843fa62-2909-d37f-f1b9-74330e3574e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_adjoin {s : Set A} (h : Set.EqOn D1 D2 s) : Set.EqOn D1 D2 (adjoin R s) := fun _ hx =>
  Algebra.adjoin_induction (hx := hx) h
    (fun r => (D1.map_algebraMap r).trans (D2.map_algebraMap r).symm)
    (fun x y _ _ hx hy => by simp only [map_add, *]) fun x y _ _ hx hy => by simp only [leibniz, *]

/-- If adjoin of a set is the whole algebra, then any two derivations equal on this set are equal
on the whole algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant03cbda535e67e0806033221dd2db597f65eaec84e0e369f6eac775fbe88c44af.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cef11039c6087e1ae3c40142ce076d17870708c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
