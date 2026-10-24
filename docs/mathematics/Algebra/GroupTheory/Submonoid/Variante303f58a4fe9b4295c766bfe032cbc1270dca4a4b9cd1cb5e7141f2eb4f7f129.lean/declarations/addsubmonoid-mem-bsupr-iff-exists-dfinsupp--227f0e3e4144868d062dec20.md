# AddSubmonoid.mem_bsupr_iff_exists_dfinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b7dc531-e691-0138-1511-56191f6ffb2a",
  "kind": "theorem",
  "lexical_name": "AddSubmonoid.mem_bsupr_iff_exists_dfinsupp",
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
  "slug": "addsubmonoid-mem-bsupr-iff-exists-dfinsupp--227f0e3e4144868d062dec20",
  "source": {
    "blob": "e3fe5ef1e09e3081f8283886566bd70d50ee7265",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 103,
    "path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:227f0e3e4144868d062dec204b9bd89ea7ce81b31cfd13f1f425feab08a7c131",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b7dc531-e691-0138-1511-56191f6ffb2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddSubmonoid.mem_bsupr_iff_exists_dfinsupp (p : ι → Prop) [DecidablePred p]
    [AddCommMonoid γ] (S : ι → AddSubmonoid γ) (x : γ) :
    (x ∈ ⨆ (i) (_ : p i), S i) ↔
      ∃ f : Π₀ i, S i, DFinsupp.sumAddHom (fun i => (S i).subtype) (f.filter p) = x :=
  SetLike.ext_iff.mp (AddSubmonoid.bsupr_eq_mrange_dfinsuppSumAddHom p S) x
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3fe5ef1e09e3081f8283886566bd70d50ee7265` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
