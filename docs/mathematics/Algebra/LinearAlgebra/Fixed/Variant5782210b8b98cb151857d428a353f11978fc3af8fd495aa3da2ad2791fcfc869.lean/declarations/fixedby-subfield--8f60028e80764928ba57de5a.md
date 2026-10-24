# FixedBy.subfield

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aadf6c64b63e7521d57f727b801ad877073ee663825bee95e6b274da781f173f",
  "kind": "def",
  "lexical_name": "FixedBy.subfield",
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
  "slug": "fixedby-subfield--8f60028e80764928ba57de5a",
  "source": {
    "blob": "2b281c48b243c545fd0fb30be71adfa2e9dea9d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f60028e80764928ba57de5a65665636b9706f80fe057e5f3f52b1944ddc8296",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aadf6c64b63e7521d57f727b801ad877073ee663825bee95e6b274da781f173f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FixedBy.subfield : Subfield F where
  carrier := fixedBy M F m
  zero_mem' := smul_zero m
  add_mem' hx hy := (smul_add m _ _).trans <| congr_arg₂ _ hx hy
  neg_mem' hx := (smul_neg m _).trans <| congr_arg _ hx
  one_mem' := smul_one m
  mul_mem' hx hy := (smul_mul' m _ _).trans <| congr_arg₂ _ hx hy
  inv_mem' x hx := (smul_inv'' m x).trans <| congr_arg _ hx
#align fixed_by.subfield FixedBy.subfield

section InvariantSubfields

variable (M) {F}

/-- A typeclass for subrings invariant under a `MulSemiringAction`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b281c48b243c545fd0fb30be71adfa2e9dea9d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
