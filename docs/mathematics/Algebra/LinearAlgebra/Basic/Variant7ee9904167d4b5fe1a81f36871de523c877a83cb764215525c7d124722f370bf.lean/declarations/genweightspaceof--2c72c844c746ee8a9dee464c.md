# genWeightSpaceOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd9744e5d84cd736c12e4ad048e8240bc6bc4226effd057b8f0fb89c21c34f1d",
  "kind": "def",
  "lexical_name": "genWeightSpaceOf",
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
  "slug": "genweightspaceof--2c72c844c746ee8a9dee464c",
  "source": {
    "blob": "4ec2915202ded868d35553e0e3b567102de51807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c72c844c746ee8a9dee464c0e7b5288913539d44e1bed2800fa7bf7f062a05b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd9744e5d84cd736c12e4ad048e8240bc6bc4226effd057b8f0fb89c21c34f1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def genWeightSpaceOf [LieRing.IsNilpotent L] (χ : R) (x : L) : LieSubmodule R L M :=
  { 𝕎(M, χ, x) with
    lie_mem := by
      intro y m hm
      simp only [AddSubsemigroup.mem_carrier, AddSubmonoid.mem_toSubsemigroup,
        Submodule.mem_toAddSubmonoid] at hm ⊢
      rw [← zero_add χ]
      exact lie_mem_maxGenEigenspace_toEnd (by simp) hm }

end notation_genWeightSpaceOf

variable (M)
variable [LieRing.IsNilpotent L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ec2915202ded868d35553e0e3b567102de51807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
