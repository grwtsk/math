# Pi.nonUnitalSeminormedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8827f7a70f8d0efd1a5cb954de5ec78ff4082b99c23b24bf4de01b6ae7e8fa3",
  "kind": "instance",
  "lexical_name": "Pi.nonUnitalSeminormedRing",
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
  "slug": "pi-nonunitalseminormedring--abb6c9563668ea0d483bbcf0",
  "source": {
    "blob": "019959d9a2cdb737f0a4045ee37ea8742e8d69c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantc5612d5d0407f188c22f47040d1823177afc8e223cd1cfa4d2accace638a73e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abb6c9563668ea0d483bbcf0f8f3920ad9aa1baf3e3b75430ecd1ac6e0422ab6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantc5612d5d0407f188c22f47040d1823177afc8e223cd1cfa4d2accace638a73e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8827f7a70f8d0efd1a5cb954de5ec78ff4082b99c23b24bf4de01b6ae7e8fa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.nonUnitalSeminormedRing {R : ι → Type*} [Fintype ι]
    [∀ i, NonUnitalSeminormedRing (R i)] : NonUnitalSeminormedRing (∀ i, R i) :=
  { seminormedAddCommGroup, nonUnitalRing with
    norm_mul_le x y := NNReal.coe_mono <| calc
      (univ.sup fun i ↦ ‖x i * y i‖₊) ≤ univ.sup ((‖x ·‖₊) * (‖y ·‖₊)) :=
        sup_mono_fun fun _ _ ↦ nnnorm_mul_le _ _
      _ ≤ (univ.sup (‖x ·‖₊)) * univ.sup (‖y ·‖₊) :=
        sup_mul_le_mul_sup_of_nonneg (fun _ _ ↦ zero_le) fun _ _ ↦ zero_le }

end NonUnitalSeminormedRing

section SeminormedRing

variable [SeminormedRing α]

/-- Seminormed ring structure on the product of finitely many seminormed rings,
  using the sup norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantc5612d5d0407f188c22f47040d1823177afc8e223cd1cfa4d2accace638a73e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantc5612d5d0407f188c22f47040d1823177afc8e223cd1cfa4d2accace638a73e6.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `019959d9a2cdb737f0a4045ee37ea8742e8d69c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
