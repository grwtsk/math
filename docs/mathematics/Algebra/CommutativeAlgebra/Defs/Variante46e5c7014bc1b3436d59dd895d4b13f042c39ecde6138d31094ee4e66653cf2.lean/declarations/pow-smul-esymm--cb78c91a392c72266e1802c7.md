# pow_smul_esymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78898111-cae4-b725-e54f-0de527937285",
  "kind": "lemma",
  "lexical_name": "pow_smul_esymm",
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
  "slug": "pow-smul-esymm--cb78c91a392c72266e1802c7",
  "source": {
    "blob": "fa29b111317e79d40737deb303ddba3d28e2dcd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 82,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variante46e5c7014bc1b3436d59dd895d4b13f042c39ecde6138d31094ee4e66653cf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb78c91a392c72266e1802c7d5d3254d51e9ab6d96baedf26a973e8bf2c09e19",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Defs/Variante46e5c7014bc1b3436d59dd895d4b13f042c39ecde6138d31094ee4e66653cf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78898111-cae4-b725-e54f-0de527937285`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_smul_esymm {S : Type*} [Monoid S] [DistribMulAction S R] [IsScalarTower S R R]
    [SMulCommClass S R R] (s : S) (n : ℕ) (m : Multiset R) :
    s ^ n • m.esymm n = (m.map (s • ·)).esymm n := by
  rw [esymm, smul_sum, map_map]
  trans ((powersetCard n m).map (fun x : Multiset R ↦ s ^ card x • x.prod)).sum
  · refine congr_arg _ (map_congr rfl (fun x hx ↦ ?_))
    rw [Function.comp_apply, (mem_powersetCard.1 hx).2]
  · simp_rw [smul_prod, esymm, powersetCard_map, map_map, Function.comp_def]

-- TODO: `Multiset.insert_eq_cons` being simp means that `esymm {x, y}` is not simp normal form
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Defs/Variante46e5c7014bc1b3436d59dd895d4b13f042c39ecde6138d31094ee4e66653cf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Defs/Variante46e5c7014bc1b3436d59dd895d4b13f042c39ecde6138d31094ee4e66653cf2.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa29b111317e79d40737deb303ddba3d28e2dcd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
