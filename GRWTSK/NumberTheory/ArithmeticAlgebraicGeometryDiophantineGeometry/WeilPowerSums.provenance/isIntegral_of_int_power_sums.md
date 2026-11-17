# `GRWTSK.FiniteFieldWeil.isIntegral_of_int_power_sums`

Maintained declaration in [GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.WeilPowerSums](../WeilPowerSums.lean#L17). The supplied Lean edition is
`weil_conjecture_main.lean`, lines 52433–52513, original declaration
`isIntegral_of_int_power_sums`. SHA-256 of the exact supplied byte slice is
`bcfd5802b5cbd7068795882cf1b87296d5dcced742f289d57d15456d0c11fb42`. The attachment edition, upstream attribution,
and dependency status are recorded in the [source map](../FiniteFieldWeilConjectures.md).

The theorem command is preserved verbatim inside `GRWTSK.FiniteFieldWeil`, retaining its
statement, hypotheses, and proof term text. First later reference in the attachment is [`weil_conjectures`](../FiniteFieldWeilConjectures.provenance/weil_conjectures.md).

The proof isolates each nonzero spectral point using a product of linear factors at the other points and puts all its positive powers in a finitely generated integer module. The determinant trick then gives integrality.

The maintained declaration elaborated under the baseline in the source map.
The imported declaration reports `propext`, `Classical.choice` and
`Quot.sound` in `#print axioms`. Separate fresh kernel checking and
independent mathematical review are **NOT_RUN**.

Local adaptation attribution: grwtsk contributors.
