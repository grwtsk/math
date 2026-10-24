# invertibleDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58a3afc2726a87af42f1f9abb9746acd228036d64261b24037f2b18146bd26e3",
  "kind": "def",
  "lexical_name": "invertibleDiv",
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
  "slug": "invertiblediv--f856bbf508c9ec95efd77aab",
  "source": {
    "blob": "f683c961857307f836994b6673dd58a3493eaa5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 78,
    "path": "GRWTSK/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f856bbf508c9ec95efd77aab9182ee2bcb1597f3edaea2649c655902c583cb7a",
  "verification": {
    "reference": "docs/verification/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58a3afc2726a87af42f1f9abb9746acd228036d64261b24037f2b18146bd26e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invertibleDiv (a b : α) [Invertible a] [Invertible b] : Invertible (a / b) :=
  ⟨b / a, by simp [← mul_div_assoc], by simp [← mul_div_assoc]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Invertible/Variant84785ffb1840dc007d288be4366183852fdb6ad8717ddca1a8778c3e2841dc0b.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f683c961857307f836994b6673dd58a3493eaa5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
