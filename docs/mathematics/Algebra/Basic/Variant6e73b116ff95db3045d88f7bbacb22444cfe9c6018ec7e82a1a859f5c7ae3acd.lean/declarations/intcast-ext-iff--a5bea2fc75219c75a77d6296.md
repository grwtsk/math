# intCast_ext_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ade15de3-deb8-9552-fb8d-28cc0c88212b",
  "kind": "theorem",
  "lexical_name": "intCast_ext_iff",
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
  "slug": "intcast-ext-iff--a5bea2fc75219c75a77d6296",
  "source": {
    "blob": "b17fb595662cb629674f210e3e78e690cb9590a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 557,
    "path": "GRWTSK/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5bea2fc75219c75a77d6296179918fb9f19212b2d2078d628c87f49328b221d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ade15de3-deb8-9552-fb8d-28cc0c88212b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intCast_ext_iff {x y : Int} : (x : α) = (y : α) ↔ x % p = y % p := by
  constructor
  · intro h
    replace h : ((x - y : Int) : α) = 0 := by rw [intCast_sub, h, sub_self]
    exact Int.emod_eq_emod_iff_emod_sub_eq_zero.mpr ((intCast_eq_zero_iff p _).mp h)
  · intro h
    have : ((x - y : Int) : α) = 0 :=
      (intCast_eq_zero_iff p _).mpr (by rw [Int.sub_emod, h, Int.sub_self, Int.zero_emod])
    replace this := congrArg (· + (y : α)) this
    simpa [intCast_sub, zero_add, AddCommGroup.sub_eq_add_neg, add_assoc,
      neg_add_cancel, add_zero] using this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6e73b116ff95db3045d88f7bbacb22444cfe9c6018ec7e82a1a859f5c7ae3acd.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b17fb595662cb629674f210e3e78e690cb9590a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
