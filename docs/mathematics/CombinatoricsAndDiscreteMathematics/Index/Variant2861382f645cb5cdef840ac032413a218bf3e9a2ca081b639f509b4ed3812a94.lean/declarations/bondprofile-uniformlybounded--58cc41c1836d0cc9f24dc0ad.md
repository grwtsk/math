# BondProfile.UniformlyBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a4336fb8eaae82c11b3b2450a33df84f27bf426ab752933dc974ba77bba91cc",
  "kind": "def",
  "lexical_name": "BondProfile.UniformlyBounded",
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
  "slug": "bondprofile-uniformlybounded--58cc41c1836d0cc9f24dc0ad",
  "source": {
    "blob": "b3393989195a7e4ccd74df5042192bbba300c50b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Index/Variant2861382f645cb5cdef840ac032413a218bf3e9a2ca081b639f509b4ed3812a94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58cc41c1836d0cc9f24dc0ad3686a1dedd5d7802d001979644b74ca1298b5a88",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Index/Variant2861382f645cb5cdef840ac032413a218bf3e9a2ca081b639f509b4ed3812a94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a4336fb8eaae82c11b3b2450a33df84f27bf426ab752933dc974ba77bba91cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BondProfile.UniformlyBounded
    {sites : Nat}
    (profile : BondProfile sites)
    (bound : Nat) : Prop :=
  ∀ index, profile.dimension index ≤ bound

/-- Virtual indices for one complete contraction path. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Index/Variant2861382f645cb5cdef840ac032413a218bf3e9a2ca081b639f509b4ed3812a94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Index/Variant2861382f645cb5cdef840ac032413a218bf3e9a2ca081b639f509b4ed3812a94.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3393989195a7e4ccd74df5042192bbba300c50b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
