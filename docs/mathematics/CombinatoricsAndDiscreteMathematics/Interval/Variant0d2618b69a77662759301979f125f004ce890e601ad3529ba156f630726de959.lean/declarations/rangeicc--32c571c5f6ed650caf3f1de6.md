# rangeIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eeabb737607d9c9f88586897932d578c77f290efa292ec2897223e16bb79b74e",
  "kind": "def",
  "lexical_name": "rangeIcc",
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
  "slug": "rangeicc--32c571c5f6ed650caf3f1de6",
  "source": {
    "blob": "ae3e793512082c14e78f3977207880a0433311c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32c571c5f6ed650caf3f1de6bb6eebb5e9f1e957a88e4722ced2c6c5ecfec560",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eeabb737607d9c9f88586897932d578c77f290efa292ec2897223e16bb79b74e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rangeIcc (f g : ι →₀ α) : ι →₀ Finset α where
  toFun i := Icc (f i) (g i)
  support :=
    -- porting note: Not needed (due to open Classical), in mathlib3 too
    -- haveI := Classical.decEq ι
    f.support ∪ g.support
  mem_support_toFun i := by
    rw [mem_union, ← not_iff_not, not_or, not_mem_support_iff, not_mem_support_iff, not_ne_iff]
    exact Icc_eq_singleton_iff.symm
#align finsupp.range_Icc Finsupp.rangeIcc

-- porting note: Added as alternative to rangeIcc_toFun to be used in proof of card_Icc
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant0d2618b69a77662759301979f125f004ce890e601ad3529ba156f630726de959.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae3e793512082c14e78f3977207880a0433311c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
