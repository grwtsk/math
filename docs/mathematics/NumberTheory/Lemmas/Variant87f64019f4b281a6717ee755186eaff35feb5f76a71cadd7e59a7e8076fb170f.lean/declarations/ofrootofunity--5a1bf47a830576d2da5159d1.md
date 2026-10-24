# ofRootOfUnity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5043994cb627810a68fabf29df2c85289216540d8171cc5a8a50e3a04a6e200f",
  "kind": "def",
  "lexical_name": "ofRootOfUnity",
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
  "slug": "ofrootofunity--5a1bf47a830576d2da5159d1",
  "source": {
    "blob": "ef5cace8de3dafea543d9085523c19a05c4b70e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 87,
    "path": "GRWTSK/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a1bf47a830576d2da5159d12bb6962ba18f78b2ccfee16b6da40b3a6fe8bcef",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5043994cb627810a68fabf29df2c85289216540d8171cc5a8a50e3a04a6e200f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofRootOfUnity {ζ : Rˣ} (hζ : ζ ∈ rootsOfUnity (Fintype.card Mˣ) R)
    {g : Mˣ} (hg : ∀ x, x ∈ Subgroup.zpowers g) :
    MulChar M R := by
  have : orderOf ζ ∣ Fintype.card Mˣ :=
    orderOf_dvd_iff_pow_eq_one.mpr <| (mem_rootsOfUnity _ ζ).mp hζ
  refine ofUnitHom <| monoidHomOfForallMemZpowers hg <| this.trans <| dvd_of_eq ?_
  rw [orderOf_eq_card_of_forall_mem_zpowers hg, Nat.card_eq_fintype_card]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lemmas/Variant87f64019f4b281a6717ee755186eaff35feb5f76a71cadd7e59a7e8076fb170f.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef5cace8de3dafea543d9085523c19a05c4b70e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
