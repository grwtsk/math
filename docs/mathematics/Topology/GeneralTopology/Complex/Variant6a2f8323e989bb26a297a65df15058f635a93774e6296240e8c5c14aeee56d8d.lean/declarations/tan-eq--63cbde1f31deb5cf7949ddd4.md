# tan_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3840c485-0638-538e-02fd-233c56705d43",
  "kind": "theorem",
  "lexical_name": "tan_eq",
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
  "slug": "tan-eq--63cbde1f31deb5cf7949ddd4",
  "source": {
    "blob": "5bd1b6e3a38715e4c862f35afa86bb5bd791d742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63cbde1f31deb5cf7949ddd48bc010fa3dfff0cfa79dc39ec0c6972e2137772f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3840c485-0638-538e-02fd-233c56705d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tan_eq {z : ℂ}
    (h :
      ((∀ k : ℤ, (z.re : ℂ) ≠ (2 * k + 1) * π / 2) ∧
          ∀ l : ℤ, (z.im : ℂ) * I ≠ (2 * l + 1) * π / 2) ∨
        (∃ k : ℤ, (z.re : ℂ) = (2 * k + 1) * π / 2) ∧
          ∃ l : ℤ, (z.im : ℂ) * I = (2 * l + 1) * π / 2) :
    tan z = (tan z.re + tanh z.im * I) / (1 - tan z.re * tanh z.im * I) := by
  convert tan_add_mul_I h; exact (re_add_im z).symm
#align complex.tan_eq Complex.tan_eq

open scoped Topology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd1b6e3a38715e4c862f35afa86bb5bd791d742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
