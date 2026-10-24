# targetDistinctions_eq_empty_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:021bb4a8-3637-5557-9f60-75e0587dbb60",
  "kind": "theorem",
  "lexical_name": "targetDistinctions_eq_empty_iff",
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
  "slug": "targetdistinctions-eq-empty-iff--0cb29fd0f3363c1b4b5b7e38",
  "source": {
    "blob": "6acc1798075e15cffefc526642a7c3ec39291c70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 206,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variante71c20b10783b955cabc52114f47d07bbafb3396714939f399bed7d5e30bf6cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cb29fd0f3363c1b4b5b7e38a3bcf5820468f7d0afefb22519e0fa86b541723b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variante71c20b10783b955cabc52114f47d07bbafb3396714939f399bed7d5e30bf6cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:021bb4a8-3637-5557-9f60-75e0587dbb60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem targetDistinctions_eq_empty_iff [Fintype Object] [DecidableEq Result]
    (target : Object → Result) :
    targetDistinctions target = ∅ ↔ ∀ x y, target x = target y := by
  constructor
  · intro empty x y
    by_contra different
    have member : (x, y) ∈ targetDistinctions target :=
      (mem_targetDistinctions target (x, y)).mpr different
    rw [empty] at member
    exact Finset.notMem_empty _ member
  · intro constant
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro pair member
    exact ((mem_targetDistinctions target pair).mp member) (constant pair.1 pair.2)

/-- A sufficient selected subfamily hits the separator set of each target-distinct pair. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variante71c20b10783b955cabc52114f47d07bbafb3396714939f399bed7d5e30bf6cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TargetSeparation/Variante71c20b10783b955cabc52114f47d07bbafb3396714939f399bed7d5e30bf6cb.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6acc1798075e15cffefc526642a7c3ec39291c70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
