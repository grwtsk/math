# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c898303e1e7e7242ec740761a59fda570a0a4def9601d603b558439c8fc2abb7",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--83dc4fdf3def290cffdff724",
  "source": {
    "blob": "62e3ead0e1e9108cafa206ca630692c68b852bdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 220,
    "path": "GRWTSK/Algebra/InstanceDiamonds/Variant7fb317da9abd9fcae00c9dbd7cfc5b1fd0e49068b5c01e7fa4c9094da94cd131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83dc4fdf3def290cffdff724e8d9fa128a674dc8df6ef7b14da29181295d4aa7",
  "verification": {
    "reference": "docs/verification/Algebra/InstanceDiamonds/Variant7fb317da9abd9fcae00c9dbd7cfc5b1fd0e49068b5c01e7fa4c9094da94cd131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c898303e1e7e7242ec740761a59fda570a0a4def9601d603b558439c8fc2abb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {α} [Preorder α] [LocallyFiniteOrder α] [Fintype α] [DecidableLT α]
    [DecidableLE α] (p : α → Prop) [DecidablePred p] :
    Subtype.instLocallyFiniteOrder p = Fintype.toLocallyFiniteOrder := by
  fail_if_success rfl
  exact Subsingleton.elim _ _

end Subtype

/-! ## `ZMod` instances -/


section ZMod

variable {p : ℕ} [Fact p.Prime]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/InstanceDiamonds/Variant7fb317da9abd9fcae00c9dbd7cfc5b1fd0e49068b5c01e7fa4c9094da94cd131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/InstanceDiamonds/Variant7fb317da9abd9fcae00c9dbd7cfc5b1fd0e49068b5c01e7fa4c9094da94cd131.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62e3ead0e1e9108cafa206ca630692c68b852bdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
