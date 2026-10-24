# finite_valued_one_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6085888-3e5d-0fd1-c8ab-919865766828",
  "kind": "theorem",
  "lexical_name": "finite_valued_one_lt",
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
  "slug": "finite-valued-one-lt--ebc38c8ffa44d16eae4b5922",
  "source": {
    "blob": "25df442725bfadba5d045807de7692b5817c435c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 126,
    "path": "GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Variant32d428e2f232d8a2c7407ed699dd4b4ddca8361de3a93ee8a996272cc1241b19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebc38c8ffa44d16eae4b592244cc6794856495d660d4ec3eb04805b7dbd0a403",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FiniteAdeleRing/Variant32d428e2f232d8a2c7407ed699dd4b4ddca8361de3a93ee8a996272cc1241b19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6085888-3e5d-0fd1-c8ab-919865766828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_valued_one_lt (a : FiniteAdeleRing R K) : {v | 1 < Valued.v (a v)}.Finite := by
  simpa [mem_adicCompletionIntegers] using a.cofinite_mem_adicCompletionIntegers

variable (R K)

/--
The canonical map from `K` to the finite adeles of `K`.

The content of the existence of this map is the fact that an element `k` of `K` is integral at
all but finitely many places, which is `IsDedekindDomain.HeightOneSpectrum.Support.finite R k`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FiniteAdeleRing/Variant32d428e2f232d8a2c7407ed699dd4b4ddca8361de3a93ee8a996272cc1241b19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Variant32d428e2f232d8a2c7407ed699dd4b4ddca8361de3a93ee8a996272cc1241b19.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25df442725bfadba5d045807de7692b5817c435c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
