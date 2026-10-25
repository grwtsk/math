# inhabitedTM2ComputableAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:961c0889b2d879b4663f50a9b6f070d798b4ef4b99a23364508e1868e746d9ae",
  "kind": "instance",
  "lexical_name": "inhabitedTM2ComputableAux",
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
  "slug": "inhabitedtm2computableaux--d69bcda56cba1427990d734b",
  "source": {
    "blob": "3e8545741cf4e71aff79333f245057a4961f606c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 307,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d69bcda56cba1427990d734b91d948cdcfcbba5e2049b9dfbc5f95a7d4035495",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:961c0889b2d879b4663f50a9b6f070d798b4ef4b99a23364508e1868e746d9ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance inhabitedTM2ComputableAux : Inhabited (TM2ComputableAux Bool Bool) :=
  ⟨(default : TM2Computable finEncodingBoolBool finEncodingBoolBool id).toTM2ComputableAux⟩

/--
For any two polynomial time Multi-tape Turing Machines,
there exists another polynomial time multi-tape Turing Machine that composes their operations.
This machine can work by simply having one tape for each tape in both of the composed TMs.
It first carries out the operations of the first TM on the tapes associated with the first TM,
then copies the output tape of the first TM to the input tape of the second TM,
then runs the second TM.
-/
proof_wanted TM2ComputableInPolyTime.comp
    {α β γ : Type} {eα : FinEncoding α} {eβ : FinEncoding β}
    {eγ : FinEncoding γ} {f : α → β} {g : β → γ} (h1 : TM2ComputableInPolyTime eα eβ f)
    (h2 : TM2ComputableInPolyTime eβ eγ g) :
  Nonempty (TM2ComputableInPolyTime eα eγ (g ∘ f))

end

end Turing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variant72a81a6edfc54fad997192e7e5199b19914ea531d1eb77cca24486961c210d01.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e8545741cf4e71aff79333f245057a4961f606c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
