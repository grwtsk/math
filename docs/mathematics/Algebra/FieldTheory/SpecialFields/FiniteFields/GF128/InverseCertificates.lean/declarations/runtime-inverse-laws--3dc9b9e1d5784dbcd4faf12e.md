# runtime_inverse_laws

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69c61d04-3469-18ed-4a92-012b1aaf2449",
  "kind": "theorem",
  "lexical_name": "runtime_inverse_laws",
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
  "slug": "runtime-inverse-laws--3dc9b9e1d5784dbcd4faf12e",
  "source": {
    "blob": "4ea5bda6c030ef71c72d9940dd36ef2127278332",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 71,
    "path": "GRWTSK/Algebra/FiniteField/GF128/InverseCertificates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dc9b9e1d5784dbcd4faf12ed26caf01f8b2bb5bfc6a26e2aba57263ca10487b",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/InverseCertificates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69c61d04-3469-18ed-4a92-012b1aaf2449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem runtime_inverse_laws (d : Nat) (h : d ∈ runtimeDenominators) :
    ∃ value : Word, inv (BitVec.ofNat 128 d) = some value ∧
      mul (BitVec.ofNat 128 d) value = 1 ∧ mul value (BitVec.ofNat 128 d) = 1 := by
  simp only [runtimeDenominators, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact ⟨48611766702991209066196372490252601654, inv9_exact, by rfl, by rfl⟩
  · exact ⟨56713727820156410577229101238628035263, inv10_exact, by rfl, by rfl⟩
  · exact ⟨255211775190703847597530955573826158499, inv12_exact, by rfl, by rfl⟩
  · exact ⟨72917650054486813599294558735378902445, inv14_exact, by rfl, by rfl⟩
  · exact ⟨24305883351495604533098186245126300827, inv18_exact, by rfl, by rfl⟩
  · exact ⟨297747071055821155530452781502797184914, inv24_exact, by rfl, by rfl⟩
  · exact ⟨37809151880104273718152734159085356818, inv27_exact, by rfl, by rfl⟩
  · exact ⟨206600008487712638531334583083573556885, inv28_exact, by rfl, by rfl⟩
  · exact ⟨34028236692093846346337460743176821141, inv30_exact, by rfl, by rfl⟩
  · exact ⟨182294125136217033998236396838447256078, inv36_exact, by rfl, by rfl⟩
  · exact ⟨99249023685273718510150927167599061646, inv40_exact, by rfl, by rfl⟩
  · exact ⟨15705340011735621390617289573773917454, inv45_exact, by rfl, by rfl⟩
  · exact ⟨18904575940052136859076367079542678409, inv54_exact, by rfl, by rfl⟩
  · exact ⟨273441187704325550997354595257670884105, inv56_exact, by rfl, by rfl⟩
  · exact ⟨187155301806516154904856034087472516233, inv60_exact, by rfl, by rfl⟩
  · exact ⟨91147062568108516999118198419223628039, inv72_exact, by rfl, by rfl⟩
  · exact ⟨7852670005867810695308644786886958727, inv90_exact, by rfl, by rfl⟩
  · exact ⟨179593471430495300161225487255655444871, inv108_exact, by rfl, by rfl⟩

/-- Zero is explicitly rejected by the actual inversion model. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/InverseCertificates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteField/GF128/InverseCertificates.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ea5bda6c030ef71c72d9940dd36ef2127278332` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
